// ================= How to Play Screen =================
// খেলার নিয়ম সুন্দর করে দেখায়: দ্রুত তথ্য, ধাপে ধাপে নিয়ম, আর star পাওয়ার নিয়ম।
// Home screen-এর "How to Play" বাটন চাপলে এই screen খোলে।
// নিয়মের লেখা বদলাতে চাইলে নিচের _step(...) লাইনগুলোর লেখা বদলান।

import 'package:flutter/material.dart';
import '../constants.dart';
import '../theme/app_style.dart';

class HowToPlayScreen extends StatelessWidget {
  const HowToPlayScreen({super.key});

  // উপরের হালকা purple বক্স (banner)
  Widget _banner() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [kHomeTop, Color(0xFFD1C4E9)]),
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [BoxShadow(color: Color(0x26000000), blurRadius: 8, offset: Offset(0, 3))],
        ),
        child: const Column(children: [
          Icon(Icons.psychology, size: 52, color: kPurpleText),
          SizedBox(height: 8),
          Text('Answer. Earn stars. Unlock levels!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kPurpleText)),
          SizedBox(height: 4),
          Text('Learn the rules in one minute', style: TextStyle(color: kPurpleDark)),
        ]),
      );

  // দ্রুত তথ্যের ছোট বক্স (যেমন "5 Levels")
  Widget _fact(IconData icon, String big, String small) => Container(
        width: 78,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: cardBox(Colors.deepPurple.shade100, 16),
        child: Column(children: [
          Icon(icon, color: Colors.deepPurple),
          const SizedBox(height: 4),
          Text(big, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(small, style: const TextStyle(fontSize: 11.5)),
        ]),
      );

  Widget _title(String text) => Padding(
        padding: const EdgeInsets.only(top: 22, bottom: 10),
        child: Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      );

  // একটি ধাপ: নম্বর, icon, শিরোনাম ও ব্যাখ্যা
  Widget _step(int n, IconData icon, String title, String text) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          decoration: cardBox(),
          padding: const EdgeInsets.all(12),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.deepPurple.shade50,
              child: Icon(icon, color: Colors.deepPurple),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('$n. $title', style: const TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold)),
                const SizedBox(height: 3),
                Text(text, style: const TextStyle(fontSize: 13.5, color: Colors.black87)),
              ]),
            ),
          ]),
        ),
      );

  // star-এর সারি (কয়টা ভরা)
  Widget _starRow(int filled, String text) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(children: [
          Row(children: List.generate(
              3, (i) => Icon(i < filled ? Icons.star : Icons.star_border, color: Colors.amber, size: 28))),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
        ]),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('How to Play')),
        body: lightBody(ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _banner(),
            const SizedBox(height: 16),
            // দ্রুত তথ্য
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                _fact(Icons.layers, '$levelCount', 'Levels'),
                _fact(Icons.help_outline, '$questionsPerLevel', 'Questions'),
                _fact(Icons.timer, '${levelSeconds}s', 'Timer'),
                _fact(Icons.check_circle, '+10', 'Per correct'),
              ],
            ),
            _title('Rules'),
            _step(1, Icons.category, 'Choose a category', 'Press Start and pick one of the quiz categories.'),
            _step(2, Icons.layers, 'Pick a level',
                'Every category has $levelCount levels. Level 1 is open; finish a level to unlock the next one.'),
            _step(3, Icons.help_outline, 'Answer $questionsPerLevel questions',
                'Each question has 4 options. The options change their place every time.'),
            _step(4, Icons.timer, 'Beat the clock', 'You have $levelSeconds seconds to finish the level.'),
            _step(5, Icons.check_circle, 'Score points',
                'Every correct answer gives you 10 points (maximum 100 per level).'),
            _step(6, Icons.touch_app, 'One chance only',
                'Each question gives you one chance. A wrong answer gives no points and you move to the next question. '
                'The correct answer is never shown.'),
            _step(7, Icons.autorenew, 'Always new questions',
                'Each time you play a level you get new questions. After a while, old questions come back mixed with new ones.'),
            _step(8, Icons.leaderboard, 'Climb the leaderboard',
                'Your total score from all levels is shown on the Leaderboard.'),
            _title('How stars work'),
            Container(
              decoration: cardBox(),
              padding: const EdgeInsets.all(14),
              child: Column(children: [
                _starRow(3, 'No wrong answers'),
                _starRow(2, '1 or 2 wrong answers'),
                _starRow(1, '3 or more wrong answers'),
              ]),
            ),
            const SizedBox(height: 22),
            Center(
              child: ElevatedButton.icon(
                style: bigBtn(),
                icon: const Icon(Icons.check),
                label: const Text('Got it!'),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            const SizedBox(height: 10),
          ],
        )),
      );
}
