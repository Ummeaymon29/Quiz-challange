// ================= Question Bank =================
// সব category-র প্রশ্ন এক জায়গায় জড়ো করা হয়েছে।
// নতুন category যোগ করতে: data ফোল্ডারে নতুন ফাইল বানিয়ে এখানে যোগ করুন
// (এবং constants.dart এ icon দিন)।

import '../models/question.dart';
import 'general_knowledge.dart';
import 'history.dart';
import 'national_flags.dart';
import 'math_puzzle.dart';
import 'science.dart';
import 'technology.dart';

const Map<String, List<Q>> bank = {
  'General Knowledge': generalKnowledge,
  'History': history,
  'National Flags': nationalFlags,
  'Math Puzzle': mathPuzzle,
  'Science': science,
  'Technology': technology,
};
