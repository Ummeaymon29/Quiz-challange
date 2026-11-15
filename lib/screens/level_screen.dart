// ================= Level Screen =================
// একটি category-র ৫টি level দেখায়। আগের level শেষ না করলে পরেরটি locked থাকে।

import 'package:flutter/material.dart';
import '../constants.dart';
import '../services/store.dart';
import '../theme/app_style.dart';
import 'quiz_screen.dart';

class LevelScreen extends StatefulWidget {
  final String cat;
  const LevelScreen(this.cat, {super.key});
  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  // উপরের header: category-র icon, নাম ও মোট star
  Widget _header() {
    int earned = 0;
    for (int l = 0; l < levelCount; l++) earned += Store.stars(widget.cat, l);
    final color = catColors[widget.cat] ?? kPurpleDark;
    return Container(
      decoration: cardBox(Colors.deepPurple.shade100),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.white,
          child: Icon(catIcons[widget.cat], size: 32, color: color),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(widget.cat, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            const SizedBox(height: 2),
            Text('$levelCount levels • $questionsPerLevel questions each',
                style: const TextStyle(fontSize: 12.5, color: Colors.black54)),
          ]),
        ),
        Text('⭐ $earned/${levelCount * 3}', style: const TextStyle(fontWeight: FontWeight.bold)),
      ]),
    );
  }

  Widget _tile(int l) {
    final open = Store.unlocked(widget.cat, l);
    final st = Store.stars(widget.cat, l);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: !open
            ? null
            : () async {
                await Navigator.push(
                    context, MaterialPageRoute(builder: (_) => QuizScreen(widget.cat, l)));
                setState(() {});
              },
        child: Ink(
          decoration: cardBox(open ? Colors.white : Colors.grey.shade200),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: open ? Colors.deepPurple.shade300 : Colors.grey,
              child: open
                  ? Text('${l + 1}',
                      style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))
                  : const Icon(Icons.lock, color: Colors.white),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Level ${l + 1} • ${levelNames[l]}',
                    style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold)),
                const SizedBox(height: 2),
                Text(
                  open ? 'Best score: ${Store.score(widget.cat, l)}' : 'Locked – complete the previous level',
                  style: const TextStyle(fontSize: 12.5, color: Colors.black54),
                ),
              ]),
            ),
            Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(3, (i) => Icon(i < st ? Icons.star : Icons.star_border, color: Colors.amber))),
            if (open) const Icon(Icons.chevron_right, color: Colors.black38),
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Select Level')),
        body: lightBody(ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _header(),
            for (int l = 0; l < levelCount; l++) _tile(l),
          ],
        )),
      );
}
