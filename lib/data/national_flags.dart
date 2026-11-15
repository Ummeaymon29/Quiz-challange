// ================= National Flags - প্রশ্নের তালিকা =================
// মোট ৬০টি প্রশ্ন:
//   Level 1 = ১ম ১০টি, Level 2 = ২য় ১০টি, Level 3 = ৩য় ১০টি,
//   Level 4 = ৪র্থ ১০টি, Level 5 = ৫ম ১০টি (ধাপে ধাপে কঠিন)
//   শেষ ১০টি = EXTRA প্রশ্ন (সব level-এর pool-এ যোগ হয়; এতে প্রতিবার খেললে নতুন প্রশ্ন আসে)
//   নতুন প্রশ্ন বাড়াতে চাইলে তালিকার শেষে যোগ করুন, বাকি সব নিজে থেকেই কাজ করবে।
// প্রশ্ন বদলাতে চাইলে শুধু এই ফাইল এডিট করলেই হবে।
// Q('প্রশ্ন', ['অপশন০', 'অপশন১', 'অপশন২', 'অপশন৩'], সঠিক_index)

import '../models/question.dart';

const List<Q> nationalFlags = [
  // Level 1
  Q('Which country has this flag? 🇧🇩', ['Bangladesh', 'Egypt', 'Malaysia', 'United States'], 0),
  Q('Which country has this flag? 🇯🇵', ['Israel', 'Malaysia', 'Kenya', 'Japan'], 3),
  Q('Which country has this flag? 🇫🇷', ['Turkey', 'Qatar', 'United Kingdom', 'France'], 3),
  Q('Which country has this flag? 🇮🇳', ['Morocco', 'India', 'Ukraine', 'Bhutan'], 1),
  Q('Which country has this flag? 🇧🇷', ['Brazil', 'Netherlands', 'New Zealand', 'Austria'], 0),
  Q('Which country has this flag? 🇨🇦', ['Ireland', 'New Zealand', 'Cuba', 'Canada'], 3),
  Q('Which country has this flag? 🇩🇪', ['Belgium', 'Hungary', 'Vietnam', 'Germany'], 3),
  Q('Which country has this flag? 🇬🇧', ['United Arab Emirates', 'Poland', 'United Kingdom', 'Belgium'], 2),
  Q('Which country has this flag? 🇺🇸', ['Bangladesh', 'Greece', 'United States', 'Italy'], 2),
  Q('Which country has this flag? 🇨🇳', ['United Kingdom', 'China', 'Bhutan', 'Canada'], 1),
  // Level 2
  Q('Which country has this flag? 🇸🇦', ['Saudi Arabia', 'Australia', 'Denmark', 'Germany'], 0),
  Q('Which country has this flag? 🇨🇭', ['Bangladesh', 'Denmark', 'Greece', 'Switzerland'], 3),
  Q('Which country has this flag? 🇰🇷', ['Colombia', 'South Korea', 'Vietnam', 'Morocco'], 1),
  Q('Which country has this flag? 🇿🇦', ['Colombia', 'Nepal', 'South Africa', 'Egypt'], 2),
  Q('Which country has this flag? 🇳🇵', ['Norway', 'Argentina', 'Nepal', 'Spain'], 2),
  Q('Which country has this flag? 🇹🇷', ['Finland', 'Sweden', 'Argentina', 'Turkey'], 3),
  Q('Which country has this flag? 🇮🇹', ['Malaysia', 'Czechia', 'Italy', 'Myanmar'], 2),
  Q('Which country has this flag? 🇪🇸', ['Hungary', 'Spain', 'Brazil', 'Mexico'], 1),
  Q('Which country has this flag? 🇷🇺', ['Canada', 'Philippines', 'New Zealand', 'Russia'], 3),
  Q('Which country has this flag? 🇦🇺', ['Sri Lanka', 'Russia', 'China', 'Australia'], 3),
  // Level 3
  Q('Which country has this flag? 🇵🇰', ['Qatar', 'Kenya', 'Jamaica', 'Pakistan'], 3),
  Q('Which country has this flag? 🇪🇬', ['Egypt', 'Jamaica', 'Australia', 'Ireland'], 0),
  Q('Which country has this flag? 🇲🇽', ['Mexico', 'Peru', 'Jamaica', 'Japan'], 0),
  Q('Which country has this flag? 🇦🇷', ['Argentina', 'Sri Lanka', 'Portugal', 'Indonesia'], 0),
  Q('Which country has this flag? 🇮🇩', ['Norway', 'Morocco', 'Canada', 'Indonesia'], 3),
  Q('Which country has this flag? 🇸🇪', ['Poland', 'New Zealand', 'Vietnam', 'Sweden'], 3),
  Q('Which country has this flag? 🇳🇴', ['United Kingdom', 'Israel', 'Norway', 'Portugal'], 2),
  Q('Which country has this flag? 🇳🇱', ['United Arab Emirates', 'Malaysia', 'Finland', 'Netherlands'], 3),
  Q('Which country has this flag? 🇵🇹', ['Portugal', 'Israel', 'Ukraine', 'Qatar'], 0),
  Q('Which country has this flag? 🇬🇷', ['Vietnam', 'Greece', 'Ghana', 'Sweden'], 1),
  // Level 4
  Q('Which country has this flag? 🇱🇰', ['Italy', 'Sri Lanka', 'Peru', 'Singapore'], 1),
  Q('Which country has this flag? 🇹🇭', ['Thailand', 'Ireland', 'Sri Lanka', 'Norway'], 0),
  Q('Which country has this flag? 🇻🇳', ['Malaysia', 'Singapore', 'Finland', 'Vietnam'], 3),
  Q('Which country has this flag? 🇲🇾', ['Nepal', 'Japan', 'Ireland', 'Malaysia'], 3),
  Q('Which country has this flag? 🇸🇬', ['Belgium', 'United States', 'Singapore', 'Denmark'], 2),
  Q('Which country has this flag? 🇵🇭', ['Malaysia', 'India', 'Jamaica', 'Philippines'], 3),
  Q('Which country has this flag? 🇳🇿', ['Qatar', 'New Zealand', 'Germany', 'Nigeria'], 1),
  Q('Which country has this flag? 🇮🇪', ['Netherlands', 'Jamaica', 'Ireland', 'Bhutan'], 2),
  Q('Which country has this flag? 🇵🇱', ['China', 'Qatar', 'Poland', 'Sri Lanka'], 2),
  Q('Which country has this flag? 🇺🇦', ['Peru', 'Nepal', 'Ukraine', 'Qatar'], 2),
  // Level 5
  Q('Which country has this flag? 🇧🇹', ['Bhutan', 'Chile', 'United Kingdom', 'Myanmar'], 0),
  Q('Which country has this flag? 🇲🇲', ['Colombia', 'Sri Lanka', 'Myanmar', 'Greece'], 2),
  Q('Which country has this flag? 🇰🇪', ['Singapore', 'Kenya', 'Italy', 'Jamaica'], 1),
  Q('Which country has this flag? 🇳🇬', ['Kenya', 'Sweden', 'Philippines', 'Nigeria'], 3),
  Q('Which country has this flag? 🇨🇴', ['Finland', 'Philippines', 'Australia', 'Colombia'], 3),
  Q('Which country has this flag? 🇨🇱', ['Colombia', 'Vietnam', 'Chile', 'Myanmar'], 2),
  Q('Which country has this flag? 🇯🇲', ['Finland', 'Qatar', 'Sri Lanka', 'Jamaica'], 3),
  Q('Which country has this flag? 🇭🇺', ['Netherlands', 'Hungary', 'South Korea', 'Sweden'], 1),
  Q('Which country has this flag? 🇨🇿', ['Cuba', 'Russia', 'Czechia', 'Spain'], 2),
  Q('Which country has this flag? 🇦🇪', ['Bangladesh', 'United Arab Emirates', 'China', 'France'], 1),
  // Extra pool (random replacement questions)
  Q('Which country has this flag? 🇧🇪', ['Myanmar', 'Poland', 'Qatar', 'Belgium'], 3),
  Q('Which country has this flag? 🇦🇹', ['Austria', 'Finland', 'Greece', 'Malaysia'], 0),
  Q('Which country has this flag? 🇫🇮', ['Argentina', 'Finland', 'Ghana', 'Thailand'], 1),
  Q('Which country has this flag? 🇩🇰', ['Colombia', 'South Korea', 'Italy', 'Denmark'], 3),
  Q('Which country has this flag? 🇨🇺', ['Vietnam', 'Cuba', 'Greece', 'Thailand'], 1),
  Q('Which country has this flag? 🇵🇪', ['Thailand', 'Finland', 'Peru', 'United Arab Emirates'], 2),
  Q('Which country has this flag? 🇮🇱', ['Netherlands', 'Austria', 'Philippines', 'Israel'], 3),
  Q('Which country has this flag? 🇶🇦', ['France', 'Ghana', 'Kenya', 'Qatar'], 3),
  Q('Which country has this flag? 🇲🇦', ['Denmark', 'Pakistan', 'Russia', 'Morocco'], 3),
  Q('Which country has this flag? 🇬🇭', ['Ghana', 'Morocco', 'Austria', 'Greece'], 0),
];
