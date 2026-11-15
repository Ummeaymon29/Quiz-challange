// ================= General Knowledge - প্রশ্নের তালিকা =================
// মোট ৬০টি প্রশ্ন:
//   Level 1 = ১ম ১০টি, Level 2 = ২য় ১০টি, Level 3 = ৩য় ১০টি,
//   Level 4 = ৪র্থ ১০টি, Level 5 = ৫ম ১০টি (ধাপে ধাপে কঠিন)
//   শেষ ১০টি = EXTRA প্রশ্ন (সব level-এর pool-এ যোগ হয়; এতে প্রতিবার খেললে নতুন প্রশ্ন আসে)
//   নতুন প্রশ্ন বাড়াতে চাইলে তালিকার শেষে যোগ করুন, বাকি সব নিজে থেকেই কাজ করবে।
// প্রশ্ন বদলাতে চাইলে শুধু এই ফাইল এডিট করলেই হবে।
// Q('প্রশ্ন', ['অপশন০', 'অপশন১', 'অপশন২', 'অপশন৩'], সঠিক_index)

import '../models/question.dart';

const List<Q> generalKnowledge = [
  // Level 1
  Q('Which planet is known as the Red Planet?', ['Saturn', 'Venus', 'Mars', 'Jupiter'], 2),
  Q('How many days are in a leap year?', ['365', '364', '367', '366'], 3),
  Q('Which animal is the largest on Earth?', ['Elephant', 'Blue Whale', 'Shark', 'Giraffe'], 1),
  Q('What is the capital of Bangladesh?', ['Khulna', 'Sylhet', 'Dhaka', 'Chattogram'], 2),
  Q('Which gas do plants absorb?', ['Nitrogen', 'Carbon dioxide', 'Oxygen', 'Helium'], 1),
  Q('How many days are in a week?', ['6', '8', '7', '5'], 2),
  Q('Which colour is made by mixing blue and yellow?', ['Purple', 'Brown', 'Orange', 'Green'], 3),
  Q('How many months are in a year?', ['13', '12', '11', '10'], 1),
  Q('Which animal is called the \'King of the Jungle\'?', ['Tiger', 'Elephant', 'Lion', 'Bear'], 2),
  Q('What is the national fruit of Bangladesh?', ['Mango', 'Litchi', 'Banana', 'Jackfruit'], 3),
  // Level 2
  Q('Which is the longest river in the world (commonly cited)?', ['Yangtze', 'Nile', 'Amazon', 'Ganges'], 1),
  Q('How many continents are there?', ['8', '5', '6', '7'], 3),
  Q('What is H2O commonly called?', ['Oxygen', 'Acid', 'Water', 'Salt'], 2),
  Q('Who invented the telephone?', ['Edison', 'Newton', 'Bell', 'Tesla'], 2),
  Q('Which is the hardest natural substance?', ['Gold', 'Quartz', 'Iron', 'Diamond'], 3),
  Q('What is the national flower of Bangladesh?', ['Water Lily', 'Rose', 'Lotus', 'Jasmine'], 0),
  Q('Which organ pumps blood?', ['Heart', 'Kidney', 'Liver', 'Lungs'], 0),
  Q('Which is the national animal of Bangladesh?', ['Deer', 'Royal Bengal Tiger', 'Lion', 'Elephant'], 1),
  Q('How many colours are there in a rainbow?', ['8', '7', '6', '5'], 1),
  Q('Which is the largest country in the world by area?', ['USA', 'Canada', 'China', 'Russia'], 3),
  // Level 3
  Q('What is the smallest prime number?', ['2', '1', '0', '3'], 0),
  Q('Which ocean is the largest?', ['Atlantic', 'Pacific', 'Arctic', 'Indian'], 1),
  Q('Which element has the symbol Au?', ['Argon', 'Silver', 'Aluminium', 'Gold'], 3),
  Q('Which is the national bird of Bangladesh?', ['Sparrow', 'Magpie Robin (Doyel)', 'Crow', 'Peacock'], 1),
  Q('What is the capital of Japan?', ['Osaka', 'Tokyo', 'Kyoto', 'Seoul'], 1),
  Q('Which is the largest hot desert in the world?', ['Thar', 'Gobi', 'Kalahari', 'Sahara'], 3),
  Q('How many players of one team play on the field in football?', ['11', '9', '12', '10'], 0),
  Q('Which is the largest land animal?', ['African Elephant', 'Hippopotamus', 'Rhinoceros', 'Giraffe'], 0),
  Q('Which is the highest mountain above sea level?', ['Kangchenjunga', 'K2', 'Mont Blanc', 'Mount Everest'], 3),
  Q('What is the currency of Japan?', ['Won', 'Yen', 'Yuan', 'Dollar'], 1),
  // Level 4
  Q('Who painted the Mona Lisa?', ['Van Gogh', 'Michelangelo', 'Picasso', 'Leonardo da Vinci'], 3),
  Q('In which country is the Eiffel Tower?', ['France', 'Spain', 'Italy', 'Belgium'], 0),
  Q('Who wrote \'Gitanjali\'?', ['Jibanananda Das', 'Kazi Nazrul Islam', 'Rabindranath Tagore', 'Bankim Chandra'], 2),
  Q('Which is the smallest continent by area?', ['Europe', 'South America', 'Australia (Oceania)', 'Antarctica'], 2),
  Q('Which country is called the \'Land of the Rising Sun\'?', ['China', 'Thailand', 'Japan', 'Korea'], 2),
  Q('How many bones does an adult human body have?', ['201', '212', '206', '208'], 2),
  Q('Which vitamin do we get from sunlight?', ['Vitamin D', 'Vitamin C', 'Vitamin A', 'Vitamin K'], 0),
  Q('Who is the National Poet of Bangladesh?', ['Jasimuddin', 'Rabindranath Tagore', 'Michael Madhusudan Dutt', 'Kazi Nazrul Islam'], 3),
  Q('What is the capital of Australia?', ['Canberra', 'Sydney', 'Melbourne', 'Perth'], 0),
  Q('Which is the longest bone in the human body?', ['Femur', 'Humerus', 'Radius', 'Tibia'], 0),
  // Level 5
  Q('Which language has the most native speakers in the world?', ['Mandarin Chinese', 'Spanish', 'English', 'Hindi'], 0),
  Q('Which is the largest planet in the Solar System?', ['Earth', 'Neptune', 'Jupiter', 'Saturn'], 2),
  Q('Which is the smallest country in the world by area?', ['Malta', 'San Marino', 'Vatican City', 'Monaco'], 2),
  Q('Who is known as the \'Father of the Computer\'?', ['Bill Gates', 'Steve Jobs', 'Charles Babbage', 'Alan Turing'], 2),
  Q('Which is the hottest planet in the Solar System?', ['Venus', 'Mars', 'Jupiter', 'Mercury'], 0),
  Q('The Sundarbans is the world\'s largest ___ forest.', ['coniferous', 'rain', 'deciduous', 'mangrove'], 3),
  Q('Which country has the largest population in the world?', ['India', 'China', 'Indonesia', 'USA'], 0),
  Q('Who won the Nobel Peace Prize in 2006 for microcredit?', ['Kailash Satyarthi', 'Muhammad Yunus', 'Abdus Salam', 'Amartya Sen'], 1),
  Q('Which blood group is known as the universal donor?', ['O negative', 'AB positive', 'A positive', 'B negative'], 0),
  Q('Which country has the longest coastline in the world?', ['Canada', 'Australia', 'Russia', 'USA'], 0),
  // Extra pool (random replacement questions)
  Q('Which gas is the most abundant in Earth\'s atmosphere?', ['Argon', 'Carbon dioxide', 'Oxygen', 'Nitrogen'], 3),
  Q('How many sides does a hexagon have?', ['5', '7', '8', '6'], 3),
  Q('Which festival is known as the Festival of Lights?', ['Holi', 'Diwali', 'Christmas', 'Eid'], 1),
  Q('Which musical instrument has black and white keys?', ['Violin', 'Flute', 'Guitar', 'Piano'], 3),
  Q('Which organ do we use to smell?', ['Ear', 'Tongue', 'Eye', 'Nose'], 3),
  Q('Which planet is famous for its rings?', ['Mercury', 'Venus', 'Mars', 'Saturn'], 3),
  Q('What is the capital of the USA?', ['Los Angeles', 'New York', 'Chicago', 'Washington, D.C.'], 3),
  Q('How many hours are there in a day?', ['24', '48', '20', '12'], 0),
  Q('Which of these birds cannot fly?', ['Ostrich', 'Eagle', 'Parrot', 'Crow'], 0),
  Q('What is the first day of the Bengali year called?', ['Pohela Falgun', 'Ekushey', 'Pohela Boishakh', 'Shakrain'], 2),
];
