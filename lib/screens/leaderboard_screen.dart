// ================= Leaderboard Screen =================
// সব player-এর মোট score অনুযায়ী ranking দেখায়।
// (এই screen আগের মতোই সাধারণ হালকা background-এ, purple gradient নয়)

import 'package:flutter/material.dart';
import '../services/store.dart';
import '../theme/app_style.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final lb = Store.leaderboard();
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Leaderboard'),
        backgroundColor: Colors.grey.shade100,
      ),
      body: lb.isEmpty
          ? const Center(child: Text('No scores yet. Play a level!', style: TextStyle(fontSize: 18)))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: lb.length,
              itemBuilder: (_, i) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  decoration: cardBox(),
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  child: Row(children: [
                    CircleAvatar(
                      backgroundColor: i == 0 ? Colors.amber : Colors.deepPurple.shade100,
                      child: i == 0
                          ? const Icon(Icons.emoji_events, color: Colors.white)
                          : Text('${i + 1}', style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(lb[i].key,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    ),
                    Text('${lb[i].value} pts', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ]),
                ),
              ),
            ),
    );
  }
}
