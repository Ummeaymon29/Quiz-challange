// ================= main.dart =================
// অ্যাপ এখান থেকে শুরু হয়। শুধু অ্যাপের theme ঠিক করে প্রথম screen (Home) খোলে।
//
// ফোল্ডার গাইড:
//   models/    -> প্রশ্নের ডাটা মডেল (Q)
//   data/      -> প্রতিটি category-র প্রশ্ন (আলাদা ফাইল) + question_bank
//   services/  -> ডাটা সেভ/লোড (Store)
//   theme/     -> রং ও ডিজাইন
//   screens/   -> প্রতিটি screen আলাদা ফাইলে
//   constants.dart -> level/প্রশ্ন/সময়ের সংখ্যা ও icon
//   assets/icon/ -> অ্যাপের logo

import 'package:flutter/material.dart';
import 'services/store.dart';
import 'screens/home_screen.dart';
import 'theme/app_style.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Store.init();
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Quiz Challenge',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // উপরের bar: হালকা purple, যাতে নিচের হালকা background-এর সঙ্গে মিশে যায়
          appBarTheme: const AppBarTheme(
            backgroundColor: kLightTop,
            foregroundColor: Colors.black87,
            surfaceTintColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            scrolledUnderElevation: 0,
          ),
        ),
        home: const HomeScreen(),
      );
}
