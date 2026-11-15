// ================= History - প্রশ্নের তালিকা =================
// মোট ৬০টি প্রশ্ন:
//   Level 1 = ১ম ১০টি, Level 2 = ২য় ১০টি, Level 3 = ৩য় ১০টি,
//   Level 4 = ৪র্থ ১০টি, Level 5 = ৫ম ১০টি (ধাপে ধাপে কঠিন)
//   শেষ ১০টি = EXTRA প্রশ্ন (সব level-এর pool-এ যোগ হয়; এতে প্রতিবার খেললে নতুন প্রশ্ন আসে)
//   নতুন প্রশ্ন বাড়াতে চাইলে তালিকার শেষে যোগ করুন, বাকি সব নিজে থেকেই কাজ করবে।
// প্রশ্ন বদলাতে চাইলে শুধু এই ফাইল এডিট করলেই হবে।
// Q('প্রশ্ন', ['অপশন০', 'অপশন১', 'অপশন২', 'অপশন৩'], সঠিক_index)

import '../models/question.dart';

const List<Q> history = [
  // Level 1
  Q('In which year did Bangladesh gain independence?', ['1971', '1952', '1947', '1975'], 0),
  Q('Who is the Father of the Nation of Bangladesh?', ['A. K. Fazlul Huq', 'Sheikh Mujibur Rahman', 'Ziaur Rahman', 'Maulana Bhashani'], 1),
  Q('International Mother Language Day is observed on?', ['16 December', '14 April', '21 February', '26 March'], 2),
  Q('Who discovered America in 1492?', ['Cook', 'Columbus', 'Vasco da Gama', 'Magellan'], 1),
  Q('The Great Wall is located in?', ['Japan', 'India', 'Korea', 'China'], 3),
  Q('Victory Day of Bangladesh is on?', ['17 April', '16 December', '21 February', '26 March'], 1),
  Q('Independence Day of Bangladesh is on?', ['16 December', '26 March', '14 April', '21 February'], 1),
  Q('The Pyramids of Giza are in which country?', ['Egypt', 'Iraq', 'Libya', 'Sudan'], 0),
  Q('Who was the first man on the Moon?', ['Yuri Gagarin', 'Neil Armstrong', 'Alan Shepard', 'Buzz Aldrin'], 1),
  Q('Who was the first President of the USA?', ['Lincoln', 'George Washington', 'Jefferson', 'Adams'], 1),
  // Level 2
  Q('World War II ended in?', ['1939', '1950', '1945', '1918'], 2),
  Q('The Battle of Plassey took place in?', ['1707', '1905', '1757', '1857'], 2),
  Q('Who mainly wrote the Declaration of Independence of the USA?', ['Washington', 'Thomas Jefferson', 'Franklin', 'Lincoln'], 1),
  Q('The French Revolution began in?', ['1815', '1776', '1689', '1789'], 3),
  Q('The first Partition of Bengal occurred in?', ['1857', '1911', '1905', '1947'], 2),
  Q('The Renaissance began in which country?', ['Italy', 'France', 'Spain', 'Germany'], 0),
  Q('In which year did the Bengali Language Movement take place?', ['1947', '1971', '1952', '1962'], 2),
  Q('Who was the first human in space?', ['Alan Shepard', 'Neil Armstrong', 'Buzz Aldrin', 'Yuri Gagarin'], 3),
  Q('The Taj Mahal was built by?', ['Babur', 'Shah Jahan', 'Aurangzeb', 'Akbar'], 1),
  Q('Who led the non-violent movement for India\'s independence?', ['Nehru', 'Mahatma Gandhi', 'Subhas Bose', 'Patel'], 1),
  // Level 3
  Q('Which famous ship sank in 1912?', ['Titanic', 'Lusitania', 'Britannic', 'Bismarck'], 0),
  Q('World War I began in?', ['1912', '1918', '1916', '1914'], 3),
  Q('The Berlin Wall fell in?', ['1979', '1989', '1991', '1985'], 1),
  Q('Which empire built the Colosseum?', ['Persian', 'Greek', 'Roman', 'Ottoman'], 2),
  Q('Which leader is famous for leading Britain through World War II?', ['Margaret Thatcher', 'Neville Chamberlain', 'Winston Churchill', 'Clement Attlee'], 2),
  Q('Who founded the Mughal Empire in India?', ['Humayun', 'Babur', 'Akbar', 'Shah Jahan'], 1),
  Q('In which year was the Six-Point Movement announced?', ['1969', '1962', '1966', '1952'], 2),
  Q('Bangladesh became a member of the United Nations in?', ['1972', '1971', '1980', '1974'], 3),
  Q('Who conquered Bengal in 1204?', ['Bakhtiyar Khalji', 'Alivardi Khan', 'Shaista Khan', 'Siraj ud-Daulah'], 0),
  Q('Who was the last independent Nawab of Bengal?', ['Mir Jafar', 'Alivardi Khan', 'Siraj ud-Daulah', 'Murshid Quli Khan'], 2),
  // Level 4
  Q('On which date was the Mujibnagar Government sworn in?', ['26 March 1971', '16 December 1971', '21 February 1952', '17 April 1971'], 3),
  Q('Which treaty formally ended World War I with Germany?', ['Treaty of Vienna', 'Treaty of Versailles', 'Treaty of Tordesillas', 'Treaty of Paris'], 1),
  Q('Who led the Russian Revolution of 1917?', ['Leon Trotsky', 'Nicholas II', 'Vladimir Lenin', 'Joseph Stalin'], 2),
  Q('Operation Searchlight began on the night of?', ['7 March 1971', '25 March 1971', '16 December 1971', '26 March 1971'], 1),
  Q('Where did Bangabandhu give the historic speech of 7 March 1971?', ['Ramna Race Course', 'Bangabhaban', 'Paltan Maidan', 'Curzon Hall'], 0),
  Q('The Magna Carta was signed in?', ['1415', '1688', '1215', '1066'], 2),
  Q('Who was the first Emperor of unified China?', ['Qin Shi Huang', 'Kublai Khan', 'Sun Yat-sen', 'Confucius'], 0),
  Q('Alexander the Great was the king of?', ['Persia', 'Macedon', 'Athens', 'Sparta'], 1),
  Q('Who was the first Prime Minister of India?', ['Vallabhbhai Patel', 'Rajendra Prasad', 'Mahatma Gandhi', 'Jawaharlal Nehru'], 3),
  Q('The Industrial Revolution began in which country?', ['France', 'Germany', 'USA', 'Britain'], 3),
  // Level 5
  Q('Which Roman general crossed the Rubicon in 49 BC?', ['Nero', 'Julius Caesar', 'Pompey', 'Augustus'], 1),
  Q('Who was defeated at the Battle of Waterloo in 1815?', ['Louis XIV', 'Duke of Wellington', 'Adolf Hitler', 'Napoleon Bonaparte'], 3),
  Q('In which year was the Agartala Conspiracy Case filed?', ['1966', '1971', '1969', '1968'], 3),
  Q('Which 1969 event in East Pakistan led to Ayub Khan\'s resignation?', ['Non-cooperation Movement', 'Indigo Revolt', 'Mass Uprising', 'Language Movement'], 2),
  Q('The Cold War was mainly between the USA and?', ['Germany', 'China', 'Japan', 'Soviet Union'], 3),
  Q('Who was the Prime Minister of the Mujibnagar Government?', ['Khondaker Mostaq Ahmad', 'Syed Nazrul Islam', 'M. Mansur Ali', 'Tajuddin Ahmad'], 3),
  Q('The Rosetta Stone helped scholars decode?', ['Cuneiform', 'Egyptian hieroglyphs', 'Latin', 'Sanskrit'], 1),
  Q('Who was the Commander-in-Chief of the Bangladesh Forces in 1971?', ['M. A. G. Osmani', 'Khaled Mosharraf', 'Ziaur Rahman', 'K. M. Shafiullah'], 0),
  Q('Who was the first Prime Minister of Pakistan?', ['Liaquat Ali Khan', 'H. S. Suhrawardy', 'Khawaja Nazimuddin', 'Muhammad Ali Jinnah'], 0),
  Q('The ancient Silk Road mainly linked China with?', ['Antarctica', 'Europe', 'South America', 'Africa'], 1),
  // Extra pool (random replacement questions)
  Q('The Statue of Liberty was a gift to the USA from?', ['Germany', 'Britain', 'France', 'Spain'], 2),
  Q('Which ancient wonder stood in Alexandria?', ['Colossus', 'Lighthouse of Pharos', 'Hanging Gardens', 'Mausoleum'], 1),
  Q('Who found the sea route to India in 1498?', ['Magellan', 'Vasco da Gama', 'Marco Polo', 'Columbus'], 1),
  Q('Who wrote the national anthem \'Amar Shonar Bangla\'?', ['Rabindranath Tagore', 'Dwijendralal Ray', 'Jibanananda Das', 'Kazi Nazrul Islam'], 0),
  Q('In which year did humans first land on the Moon?', ['1972', '1961', '1965', '1969'], 3),
  Q('Which civilization built Machu Picchu?', ['Maya', 'Inca', 'Roman', 'Aztec'], 1),
  Q('Who was the first female Prime Minister of Bangladesh?', ['Sheikh Hasina', 'Begum Rokeya', 'Khaleda Zia', 'Matia Chowdhury'], 2),
  Q('Begum Rokeya is famous as a pioneer of?', ['Space science', 'Women\'s education', 'Cricket', 'Banking'], 1),
  Q('Adolf Hitler ruled which country?', ['Austria', 'Japan', 'Germany', 'Italy'], 2),
  Q('Who invented the printing press with movable type in Europe?', ['Johannes Gutenberg', 'Galileo', 'Isaac Newton', 'Columbus'], 0),
];
