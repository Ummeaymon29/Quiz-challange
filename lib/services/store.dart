// ================= Store (সেভ করা ডাটা) =================
// Player-এর নাম, score, star, level unlock ও leaderboard
// ফোনের মেমোরিতে (shared_preferences) সেভ ও পড়ার কাজ এখানে হয়।

import 'package:shared_preferences/shared_preferences.dart';
import '../constants.dart';
import '../data/question_bank.dart';

class Store {
  static late SharedPreferences p;
  static Future<void> init() async => p = await SharedPreferences.getInstance();
  static String get name => p.getString('name') ?? 'Player';
  static int stars(String c, int l) => p.getInt('st_${c}_$l') ?? 0;
  static int score(String c, int l) => p.getInt('sc_${c}_$l') ?? 0;
  static bool unlocked(String c, int l) => l == 0 || stars(c, l - 1) > 0;

  // কোন কোন প্রশ্ন (index) এই level-এ আগে দেখা হয়ে গেছে তা মনে রাখে।
  // এর ফলে level আবার খেললে আগে নতুন প্রশ্ন আসে, তারপর পুরোনো মিশে যায়।
  static List<int> seen(String c, int l) =>
      (p.getStringList('seen_${c}_$l') ?? []).map(int.parse).toList();
  static Future<void> saveSeen(String c, int l, List<int> idx) =>
      p.setStringList('seen_${c}_$l', idx.map((e) => e.toString()).toList());

  static int total() {
    int t = 0;
    for (final c in bank.keys) {
      for (int l = 0; l < levelCount; l++) t += score(c, l);
    }
    return t;
  }

  static Future<void> saveResult(String c, int l, int stars, int score) async {
    if (stars > Store.stars(c, l)) await p.setInt('st_${c}_$l', stars);
    if (score > Store.score(c, l)) await p.setInt('sc_${c}_$l', score);
    final lb = Map<String, int>.fromEntries((p.getStringList('lb') ?? []).map((e) {
      final i = e.lastIndexOf('|');
      return MapEntry(e.substring(0, i), int.parse(e.substring(i + 1)));
    }));
    lb[name] = total();
    await p.setStringList('lb', lb.entries.map((e) => '${e.key}|${e.value}').toList());
  }

  static List<MapEntry<String, int>> leaderboard() {
    final l = (p.getStringList('lb') ?? []).map((e) {
      final i = e.lastIndexOf('|');
      return MapEntry(e.substring(0, i), int.parse(e.substring(i + 1)));
    }).toList();
    l.sort((a, b) => b.value.compareTo(a.value));
    return l;
  }
}
