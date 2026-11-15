// ================= Constants =================
// পুরো অ্যাপের সংখ্যা/সেটিং এক জায়গায়। এখানে বদলালে পুরো অ্যাপে বদলে যাবে।

import 'package:flutter/material.dart';

// প্রতিটি category-র icon
const catIcons = {
  'General Knowledge': Icons.lightbulb,
  'History': Icons.account_balance,
  'National Flags': Icons.flag,
  'Math Puzzle': Icons.calculate,
  'Science': Icons.science,
  'Technology': Icons.computer,
};

// প্রতিটি category-র icon-এর রং (নতুন category-র রং না দিলে purple হবে)
const catColors = {
  'General Knowledge': Color(0xFFF9A825),
  'History': Color(0xFF8D6E63),
  'National Flags': Color(0xFFE53935),
  'Math Puzzle': Color(0xFF1E88E5),
  'Science': Color(0xFF43A047),
  'Technology': Color(0xFF00897B),
};

// ৫টি level-এর নাম (সহজ থেকে কঠিন)
const levelNames = ['Beginner', 'Easy', 'Medium', 'Hard', 'Expert'];

const int levelCount = 5; // প্রতি category-তে ৫টি level
const int questionsPerLevel = 10; // প্রতি level-এ ১০টি প্রশ্ন
const int levelSeconds = 60; // প্রতি level-এর সময় ৬০ সেকেন্ড
