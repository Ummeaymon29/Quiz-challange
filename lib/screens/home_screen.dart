// ================= Home Screen =================
// প্রথম screen: logo, নাম লেখা, Start, How to Play ও Leaderboard বাটন।

import 'package:flutter/material.dart';
import '../services/store.dart';
import '../theme/app_style.dart';
import 'category_screen.dart';
import 'how_to_play_screen.dart';
import 'leaderboard_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final TextEditingController nameCtl = TextEditingController(text: Store.name);

  void _saveName() => Store.p.setString('name', nameCtl.text.trim().isEmpty ? 'Player' : nameCtl.text.trim());

  @override
  Widget build(BuildContext context) => Scaffold(
        body: gradientBody(Stack(fit: StackFit.expand, children: [
          // সাজানোর হালকা গোল আকৃতি
          Positioned(top: -50, left: -50, child: decoCircle(190)),
          Positioned(top: 120, right: -40, child: decoCircle(110)),
          Positioned(bottom: -70, right: -30, child: decoCircle(220)),
          Positioned(bottom: 90, left: -30, child: decoCircle(90)),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                // logo
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(28)),
                    boxShadow: [BoxShadow(color: Color(0x44000000), blurRadius: 14, offset: Offset(0, 6))],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Image.asset(
                      'assets/icon/app_icon.png',
                      width: 120,
                      height: 120,
                      errorBuilder: (_, __, ___) => const Icon(Icons.psychology, size: 100, color: kPurpleDark),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const Text('Quiz Challenge',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: kPurpleText)),
                const Text('One-Player Mobile Quiz Game', style: TextStyle(color: kPurpleDark)),
                const SizedBox(height: 28),
                SizedBox(
                  width: 260,
                  child: TextField(
                    controller: nameCtl,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Your name',
                      prefixIcon: const Icon(Icons.person, color: kPurpleDark),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(26), borderSide: BorderSide.none),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  style: bigBtn(),
                  icon: const Icon(Icons.play_arrow),
                  label: const Text('Start'),
                  onPressed: () {
                    _saveName();
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const CategoryScreen()));
                  },
                ),
                const SizedBox(height: 14),
                ElevatedButton.icon(
                  style: bigBtn(Colors.white, kPurpleDark),
                  icon: const Icon(Icons.menu_book),
                  label: const Text('How to Play'),
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const HowToPlayScreen())),
                ),
                const SizedBox(height: 14),
                ElevatedButton.icon(
                  style: bigBtn(Colors.white, kPurpleDark),
                  icon: const Icon(Icons.leaderboard),
                  label: const Text('Leaderboard'),
                  onPressed: () {
                    _saveName();
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const LeaderboardScreen()));
                  },
                ),
              ]),
            ),
          ),
        ])),
      );
}
