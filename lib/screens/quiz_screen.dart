// ================= Quiz Screen =================
// মূল খেলা: প্রতি level-এ ঠিক ১০টি প্রশ্ন, ৬০ সেকেন্ডের timer, score।
//
// নিয়ম:
//   * প্রতিটি level-এ প্রশ্ন সবসময় ১০টি (কোনো প্রশ্ন যোগ হয় না, তাই খেলা শেষ হয়ই)।
//   * প্রতিটি প্রশ্নে সুযোগ ১টি: সঠিক হলে +১০ score, ভুল হলে ০ — দুই ক্ষেত্রেই পরের প্রশ্নে যায়।
//   * ভুল হলে সঠিক উত্তর দেখানো হয় না।
//   * প্রতিবার level খেললে ১০টি নতুন প্রশ্ন আসে (আগে নতুন, কম পড়লে পুরোনো মিশে যায়)।
//   * প্রতিবার প্রশ্ন আসার সময় ৪টি অপশনের জায়গা shuffle হয়।

import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../data/question_bank.dart';
import '../models/question.dart';
import '../services/store.dart';
import '../theme/app_style.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final String cat;
  final int level;
  const QuizScreen(this.cat, this.level, {super.key});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final rnd = Random();
  late List<Q> queue; // এই খেলার ১০টি প্রশ্ন
  int idx = 0, wrong = 0, score = 0, timeLeft = levelSeconds, gen = 0;
  List<int> order = [0, 1, 2, 3]; // অপশনগুলোর shuffle করা ক্রম
  int? rightPicked, wrongPicked;
  bool busy = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _start();
  }

  // ---------- প্রশ্ন বাছাই (Randomization) ----------
  // এই level-এর pool = level-এর নিজের ১০টি + category-র extra প্রশ্নগুলো।
  // pool থেকে ১০টি বাছা হয়: আগে যেগুলো দেখা হয়নি (নতুন), কম পড়লে পুরোনো থেকে।
  List<Q> _pickQuestions() {
    final all = bank[widget.cat]!;
    final s = widget.level * questionsPerLevel;
    final e = s + questionsPerLevel;
    final extrasStart = levelCount * questionsPerLevel;

    final pool = <int>[
      for (int i = s; i < e; i++) i,
      for (int i = extrasStart; i < all.length; i++) i,
    ];

    final seen = Store.seen(widget.cat, widget.level).toSet();
    final fresh = pool.where((i) => !seen.contains(i)).toList()..shuffle(rnd); // নতুন
    final old = pool.where((i) => seen.contains(i)).toList()..shuffle(rnd); // পুরোনো
    final chosen = [...fresh, ...old].take(questionsPerLevel).toList();

    // দেখা প্রশ্নগুলো মনে রাখা। নতুন প্রশ্ন ১০টির কম থাকলে নতুন করে চক্র শুরু।
    final newSeen = fresh.length >= questionsPerLevel ? {...seen, ...chosen}.toList() : chosen;
    unawaited(Store.saveSeen(widget.cat, widget.level, newSeen));

    chosen.shuffle(rnd); // প্রশ্নের ক্রমও এলোমেলো
    return chosen.map((i) => all[i]).toList();
  }

  void _start() {
    queue = _pickQuestions();
    gen++;
    idx = 0; wrong = 0; score = 0; timeLeft = levelSeconds;
    order = _newOrder();
    rightPicked = null; wrongPicked = null; busy = false;
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (!mounted) return;
      setState(() => timeLeft--);
      if (timeLeft <= 0) {
        t.cancel();
        _timeUp();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> _timeUp() async {
    final retry = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        title: const Text("Time's up! ⏰"),
        content: const Text('You ran out of time for this level.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Exit')),
          ElevatedButton(onPressed: () => Navigator.pop(context, true), child: const Text('Retry')),
        ],
      ),
    );
    if (!mounted) return;
    if (retry == true) {
      setState(_start);
    } else {
      Navigator.pop(context);
    }
  }

  // নতুন প্রশ্নের জন্য ৪টি অপশনের এলোমেলো ক্রম বানায় (shuffle)
  List<int> _newOrder() =>
      List<int>.generate(queue[idx].opts.length, (k) => k)..shuffle(rnd);

  // পরের প্রশ্নে যায় (শেষ প্রশ্ন হলে level শেষ)
  void _next() {
    if (idx + 1 >= queue.length) {
      _finish();
    } else {
      setState(() {
        idx++;
        rightPicked = null;
        wrongPicked = null;
        busy = false;
        order = _newOrder();
      });
    }
  }

  // i = screen-এ কত নম্বর বাটনে চাপা হয়েছে; order[i] = সেই বাটনের আসল অপশন
  Future<void> _answer(int i) async {
    if (busy) return;
    final q = queue[idx];
    final g = gen;
    busy = true;
    if (order[i] == q.ans) {
      // সঠিক উত্তর: +১০ score
      setState(() { rightPicked = i; score += 10; });
    } else {
      // ভুল উত্তর: লাল হয়, সঠিক উত্তর দেখানো হয় না
      setState(() { wrong++; wrongPicked = i; });
    }
    await Future.delayed(const Duration(milliseconds: 700));
    // stop if the screen closed, the level was restarted, or time ran out meanwhile
    if (!mounted || g != gen || timeLeft <= 0) return;
    _next();
  }

  Future<void> _finish() async {
    timer?.cancel();
    final stars = wrong == 0 ? 3 : (wrong <= 2 ? 2 : 1);
    final finalScore = score; // শুধু সঠিক উত্তরের score (প্রতিটি সঠিক = ১০)
    await Store.saveResult(widget.cat, widget.level, stars, finalScore);
    if (!mounted) return;
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (_) => ResultScreen(widget.cat, widget.level, stars, finalScore, wrong)));
  }

  // সময় ও score দেখানোর ছোট সাদা বক্স
  Widget _pill(IconData icon, String text, Color color) => Container(
        decoration: cardBox(Colors.white, 24),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Icon(icon, size: 20, color: color),
          const SizedBox(width: 6),
          Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color)),
        ]),
      );

  // একটি অপশন বাটন (A, B, C, D অক্ষর সহ)
  Widget _option(int i, Q q) {
    final right = rightPicked == i;
    final bad = wrongPicked == i;
    final picked = right || bad;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          backgroundColor: right ? Colors.green : bad ? Colors.red : Colors.white,
          foregroundColor: picked ? Colors.white : Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: picked ? Colors.transparent : Colors.deepPurple.shade100, width: 1.5),
          ),
        ),
        onPressed: () => _answer(i),
        child: Row(children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: picked ? Colors.white : Colors.deepPurple.shade50,
            child: Text(String.fromCharCode(65 + i),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: right ? Colors.green : bad ? Colors.red : Colors.deepPurple)),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(q.opts[order[i]], style: const TextStyle(fontSize: 17))),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final q = queue[idx];
    final m = (timeLeft ~/ 60).toString().padLeft(2, '0');
    final s = (timeLeft % 60).toString().padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(title: Text('${widget.cat} – Level ${widget.level + 1}')),
      body: lightBody(SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          // উপরের সারি: সময় ও score (শেষ ১০ সেকেন্ডে সময় লাল হয়)
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            _pill(Icons.timer, '$m:$s', timeLeft <= 10 ? Colors.red : Colors.deepPurple),
            _pill(Icons.emoji_events, 'Score: $score', Colors.deepPurple),
          ]),
          const SizedBox(height: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: idx / queue.length,
              minHeight: 10,
              backgroundColor: Colors.deepPurple.shade50,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple.shade200),
            ),
          ),
          const SizedBox(height: 8),
          Text('Question ${idx + 1} of ${queue.length}', textAlign: TextAlign.center),
          const SizedBox(height: 18),
          // প্রশ্নের card
          Container(
            decoration: cardBox(Colors.white, 22),
            padding: const EdgeInsets.all(22),
            child: Text(q.text, textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w600)),
          ),
          const SizedBox(height: 14),
          // ৪টি অপশন (সঠিক = সবুজ, ভুল = লাল)
          for (int i = 0; i < q.opts.length; i++) _option(i, q),
        ]),
      )),
    );
  }
}
