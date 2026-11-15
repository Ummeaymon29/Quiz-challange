// ================= Result Screen =================
// Level শেষে ফলাফল: star, score, কয়টি সঠিক/ভুল, আর Next Level / Replay / Home বাটন।
// সব কিছু এক screen-এ ধরে যাতে scroll করতে না হয় (ছোট করে সাজানো)।

import 'package:flutter/material.dart';
import '../constants.dart';
import '../theme/app_style.dart';
import 'category_screen.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  final String cat;
  final int level, stars, score, wrong;
  const ResultScreen(this.cat, this.level, this.stars, this.score, this.wrong, {super.key});

  // star অনুযায়ী বার্তা
  String get _title => stars == 3 ? 'Excellent!' : stars == 2 ? 'Good job!' : 'Keep practicing!';

  // ছোট তথ্য-বক্স (Correct / Wrong / Questions)
  Widget _stat(IconData icon, Color color, String value, String label) => Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade50,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(children: [
            Icon(icon, color: color, size: 20),
            Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(label, style: const TextStyle(fontSize: 11.5, color: Colors.black54)),
          ]),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final hasNext = level + 1 < levelCount;
    final correct = score ~/ 10;
    return Scaffold(
      body: lightBody(Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              // মূল ফলাফল card
              Container(
                decoration: cardBox(Colors.white, 24),
                padding: const EdgeInsets.fromLTRB(18, 16, 18, 16),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text('$cat • Level ${level + 1}', style: const TextStyle(color: Colors.black54, fontSize: 13)),
                  const SizedBox(height: 2),
                  Text(_title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: kPurpleText)),
                  const SizedBox(height: 8),
                  // star গুলো ধীরে বড় হয়ে আসে
                  TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.elasticOut,
                    builder: (_, v, child) => Transform.scale(scale: v, child: child),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: List.generate(
                        3, (i) => Icon(i < stars ? Icons.star : Icons.star_border, size: 44, color: Colors.amber))),
                  ),
                  const SizedBox(height: 4),
                  Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic, children: [
                    Text('$score', style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: kPurpleDark)),
                    const SizedBox(width: 6),
                    const Text('points', style: TextStyle(color: Colors.black54)),
                  ]),
                  const SizedBox(height: 10),
                  Row(children: [
                    _stat(Icons.check_circle, Colors.green, '$correct', 'Correct'),
                    const SizedBox(width: 8),
                    _stat(Icons.cancel, Colors.red, '$wrong', 'Wrong'),
                    const SizedBox(width: 8),
                    _stat(Icons.help_outline, kPurpleDark, '$questionsPerLevel', 'Questions'),
                  ]),
                  if (hasNext) ...[
                    const SizedBox(height: 10),
                    const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(Icons.lock_open, size: 16, color: Colors.green),
                      SizedBox(width: 6),
                      Text('Next level unlocked!',
                          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 13)),
                    ]),
                  ],
                ]),
              ),
              const SizedBox(height: 14),
              // Replay ও Next Level পাশাপাশি
              Row(children: [
                Expanded(
                  child: ElevatedButton.icon(
                    style: hasNext
                        ? bigBtn(Colors.white, kPurpleDark, const Size(0, 48))
                        : bigBtn(kBtn, Colors.white, const Size(0, 48)),
                    icon: const Icon(Icons.replay),
                    label: const Text('Replay'),
                    onPressed: () => Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => QuizScreen(cat, level))),
                  ),
                ),
                if (hasNext) ...[
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      style: bigBtn(kBtn, Colors.white, const Size(0, 48)),
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text('Next Level'),
                      onPressed: () => Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => QuizScreen(cat, level + 1))),
                    ),
                  ),
                ],
              ]),
              const SizedBox(height: 4),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton.icon(
                  onPressed: () => Navigator.popUntil(context, (r) => r.isFirst),
                  icon: const Icon(Icons.home, color: kPurpleDark),
                  label: const Text('Home', style: TextStyle(color: kPurpleDark, fontSize: 15)),
                ),
                TextButton.icon(
                  onPressed: () => Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (_) => const CategoryScreen()), (r) => r.isFirst),
                  icon: const Icon(Icons.grid_view, color: kPurpleDark),
                  label: const Text('Categories', style: TextStyle(color: kPurpleDark, fontSize: 15)),
                ),
              ]),
            ]),
          ),
        ),
      )),
    );
  }
}
