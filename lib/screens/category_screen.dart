// ================= Category Screen =================
// সব category ছোট ছোট card-এ দেখায় (এক row-তে ৩টি) এবং প্রতিটিতে কত star পাওয়া গেছে।
// কোন row-তে কয়টা category থাকবে তা rowSizes দিয়ে ঠিক হয়।

import 'package:flutter/material.dart';
import '../constants.dart';
import '../data/question_bank.dart';
import '../services/store.dart';
import '../theme/app_style.dart';
import 'level_screen.dart';

// প্রতিটি row-তে কয়টা category থাকবে। এখন ৬টি category: ৩ + ৩।
//   ৭টি category হলে নিজে থেকেই নিচে নতুন row আসবে (৩ + ৩ + ১)।
//   আলাদা সাজাতে চাইলে বদলান, যেমন [2, 3, 2] (যোগফল = category সংখ্যা)।
const List<int> rowSizes = [3, 3];

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  // একটা category-র ছোট card
  Widget _card(BuildContext context, String c) {
    int earned = 0;
    for (int l = 0; l < levelCount; l++) earned += Store.stars(c, l);
    final color = catColors[c] ?? kPurpleDark;
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LevelScreen(c))),
      child: Ink(
        decoration: cardBox(Colors.deepPurple.shade100),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: Icon(catIcons[c], size: 26, color: color),
          ),
          const SizedBox(height: 8),
          Text(c,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text('⭐ $earned / ${levelCount * 3}', style: const TextStyle(fontSize: 11.5)),
        ]),
      ),
    );
  }

  // সব row বানায়
  List<Widget> _rows(BuildContext context) {
    final cats = bank.keys.toList();

    // rowSizes এ যত category ধরে, তার বেশি থাকলে বাকিগুলো ৩টা করে নতুন row-তে যায়
    final sizes = [...rowSizes];
    int total = sizes.fold(0, (a, b) => a + b);
    while (total < cats.length) {
      sizes.add(3);
      total += 3;
    }

    int start = 0;
    final rows = <Widget>[];
    for (final n in sizes) {
      final items = cats.skip(start).take(n).toList();
      if (items.isEmpty) break; // category শেষ হলে আর row বানাবে না
      start += n;

      final cards = <Widget>[];
      for (int k = 0; k < items.length; k++) {
        if (k > 0) cards.add(const SizedBox(width: 12));
        cards.add(Expanded(flex: 2, child: _card(context, items[k])));
      }
      // ৩টির কম হলে দুই পাশে ফাঁকা জায়গা দিয়ে মাঝখানে বসানো (card-এর মাপ একই থাকে)
      if (items.length < 3) {
        final pad = 3 - items.length;
        cards.insert(0, Spacer(flex: pad));
        cards.add(Spacer(flex: pad));
      }

      rows.add(Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: SizedBox(height: 128, child: Row(children: cards)),
      ));
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    // সব category মিলিয়ে মোট কত star পাওয়া গেছে
    int earned = 0;
    for (final c in bank.keys) {
      for (int l = 0; l < levelCount; l++) earned += Store.stars(c, l);
    }
    final totalStars = bank.length * levelCount * 3;

    return Scaffold(
      appBar: AppBar(title: const Text('Select Category')),
      body: lightBody(ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // উপরের ছোট সারাংশ বক্স
          Container(
            decoration: cardBox(),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(children: [
              const CircleAvatar(
                backgroundColor: kLightTop,
                child: Icon(Icons.waving_hand, color: kPurpleDark),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Hi, ${Store.name}!', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Text('Choose a category to start', style: TextStyle(color: Colors.black54, fontSize: 13)),
                ]),
              ),
              Text('⭐ $earned/$totalStars', style: const TextStyle(fontWeight: FontWeight.bold)),
            ]),
          ),
          const SizedBox(height: 16),
          ..._rows(context),
        ],
      )),
    );
  }
}
