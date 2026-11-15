// ================= Science - প্রশ্নের তালিকা =================
// মোট ৬০টি প্রশ্ন:
//   Level 1 = ১ম ১০টি, Level 2 = ২য় ১০টি, Level 3 = ৩য় ১০টি,
//   Level 4 = ৪র্থ ১০টি, Level 5 = ৫ম ১০টি (ধাপে ধাপে কঠিন)
//   শেষ ১০টি = EXTRA প্রশ্ন (সব level-এর pool-এ যোগ হয়; এতে প্রতিবার খেললে নতুন প্রশ্ন আসে)
//   নতুন প্রশ্ন বাড়াতে চাইলে তালিকার শেষে যোগ করুন, বাকি সব নিজে থেকেই কাজ করবে।
// প্রশ্ন বদলাতে চাইলে শুধু এই ফাইল এডিট করলেই হবে।
// Q('প্রশ্ন', ['অপশন০', 'অপশন১', 'অপশন২', 'অপশন৩'], সঠিক_index)

import '../models/question.dart';

const List<Q> science = [
  // Level 1
  Q('Which gas do humans need to breathe to live?', ['Carbon dioxide', 'Oxygen', 'Nitrogen', 'Hydrogen'], 1),
  Q('Which is the closest star to Earth?', ['The Sun', 'Polaris', 'The Moon', 'Sirius'], 0),
  Q('At what temperature does water freeze (in °C)?', ['100°C', '32°C', '10°C', '0°C'], 3),
  Q('At what temperature does water boil at sea level (in °C)?', ['90°C', '80°C', '100°C', '120°C'], 2),
  Q('Which organ helps us to see?', ['Nose', 'Skin', 'Ear', 'Eye'], 3),
  Q('Which force pulls objects towards the Earth?', ['Gravity', 'Friction', 'Magnetism', 'Wind'], 0),
  Q('Which part of a plant absorbs water from the soil?', ['Flowers', 'Roots', 'Leaves', 'Stem'], 1),
  Q('How many legs does an insect have?', ['8', '10', '6', '4'], 2),
  Q('What is the centre of an atom called?', ['Nucleus', 'Electron', 'Cell', 'Orbit'], 0),
  Q('Which of these produces its own light?', ['A Mirror', 'The Moon', 'The Earth', 'The Sun'], 3),
  // Level 2
  Q('What is the chemical symbol of oxygen?', ['Og', 'O', 'Ox', 'Om'], 1),
  Q('Which planet is nearest to the Sun?', ['Venus', 'Earth', 'Mars', 'Mercury'], 3),
  Q('Which is called the \'powerhouse of the cell\'?', ['Chromosome', 'Mitochondria', 'Ribosome', 'Nucleus'], 1),
  Q('Which gas do humans breathe out as waste?', ['Oxygen', 'Helium', 'Carbon dioxide', 'Hydrogen'], 2),
  Q('Sound travels fastest through which of these?', ['Air', 'Water', 'Vacuum', 'Steel'], 3),
  Q('Which blood cells carry oxygen?', ['Plasma', 'White blood cells', 'Platelets', 'Red blood cells'], 3),
  Q('What is the unit of electric current?', ['Ampere', 'Ohm', 'Watt', 'Volt'], 0),
  Q('How do plants make their own food?', ['Respiration', 'Photosynthesis', 'Digestion', 'Evaporation'], 1),
  Q('Which metal is liquid at room temperature?', ['Copper', 'Iron', 'Aluminium', 'Mercury'], 3),
  Q('How many planets are there in the Solar System?', ['8', '9', '10', '7'], 0),
  // Level 3
  Q('What is the chemical formula of table salt?', ['HCl', 'NaCl', 'NaOH', 'KCl'], 1),
  Q('What is the approximate speed of light?', ['3,000 km/s', '150,000 km/s', '30,000 km/s', '300,000 km/s'], 3),
  Q('What is the pH of pure water?', ['7', '1', '0', '14'], 0),
  Q('Deficiency of which vitamin causes scurvy?', ['Vitamin D', 'Vitamin C', 'Vitamin B12', 'Vitamin A'], 1),
  Q('Which gas is used in balloons to make them float?', ['Nitrogen', 'Carbon dioxide', 'Helium', 'Oxygen'], 2),
  Q('Who proposed the Theory of Relativity?', ['Isaac Newton', 'Charles Darwin', 'Albert Einstein', 'Galileo'], 2),
  Q('What is the SI unit of force?', ['Newton', 'Pascal', 'Watt', 'Joule'], 0),
  Q('Which part of the brain controls body balance?', ['Spinal cord', 'Hypothalamus', 'Cerebrum', 'Cerebellum'], 3),
  Q('What is the chemical symbol of sodium?', ['S', 'Na', 'So', 'Sd'], 1),
  Q('Which planet is often called the \'Morning Star\'?', ['Mars', 'Mercury', 'Venus', 'Jupiter'], 2),
  // Level 4
  Q('What is the atomic number of carbon?', ['6', '8', '12', '4'], 0),
  Q('\'Every action has an equal and opposite reaction\' is which law?', ['Newton\'s Second Law', 'Law of Gravitation', 'Newton\'s Third Law', 'Newton\'s First Law'], 2),
  Q('Which organ produces insulin?', ['Kidney', 'Liver', 'Stomach', 'Pancreas'], 3),
  Q('Which is the most abundant element in the universe?', ['Oxygen', 'Hydrogen', 'Carbon', 'Helium'], 1),
  Q('What does DNA stand for?', ['Deoxyribose Nucleic Atom', 'Deoxyribonucleic Acid', 'Dynamic Nucleic Acid', 'Dioxyribonucleic Acid'], 1),
  Q('Which type of mirror is used as a vehicle\'s rear-view mirror?', ['Cylindrical', 'Convex', 'Concave', 'Plane'], 1),
  Q('Which part of the eye controls the amount of light entering it?', ['Retina', 'Iris', 'Cornea', 'Optic nerve'], 1),
  Q('Which acid is found in the human stomach?', ['Hydrochloric acid', 'Nitric acid', 'Acetic acid', 'Sulphuric acid'], 0),
  Q('Who discovered penicillin?', ['Louis Pasteur', 'Robert Koch', 'Marie Curie', 'Alexander Fleming'], 3),
  Q('What is the unit of frequency?', ['Decibel', 'Tesla', 'Hertz', 'Coulomb'], 2),
  // Level 5
  Q('Which particle has a negative charge?', ['Proton', 'Nucleus', 'Neutron', 'Electron'], 3),
  Q('What is the chemical symbol of potassium?', ['P', 'Po', 'K', 'Pt'], 2),
  Q('Which element has atomic number 1?', ['Hydrogen', 'Oxygen', 'Lithium', 'Helium'], 0),
  Q('What is the scientific study of earthquakes called?', ['Meteorology', 'Seismology', 'Ornithology', 'Entomology'], 1),
  Q('Who proposed the theory of evolution by natural selection?', ['Louis Pasteur', 'Gregor Mendel', 'Isaac Newton', 'Charles Darwin'], 3),
  Q('Which is the most abundant metal in the Earth\'s crust?', ['Copper', 'Gold', 'Aluminium', 'Iron'], 2),
  Q('Which blood group has neither A nor B antigens?', ['AB', 'B', 'A', 'O'], 3),
  Q('According to Ohm\'s law, voltage V equals?', ['I × R', 'I + R', 'I ÷ R', 'R ÷ I'], 0),
  Q('Which gas is mainly responsible for global warming?', ['Helium', 'Argon', 'Carbon dioxide', 'Oxygen'], 2),
  Q('Which planet has the famous \'Great Red Spot\'?', ['Saturn', 'Neptune', 'Mars', 'Jupiter'], 3),
  // Extra pool (random replacement questions)
  Q('How many chambers does the human heart have?', ['5', '4', '2', '3'], 1),
  Q('Which vitamin is good for eyesight?', ['Vitamin A', 'Vitamin C', 'Vitamin D', 'Vitamin B'], 0),
  Q('Which is the hardest part of the human body?', ['Skull', 'Tooth enamel', 'Bone', 'Nail'], 1),
  Q('What do bees collect from flowers?', ['Leaves', 'Water', 'Sand', 'Nectar'], 3),
  Q('Which planet is smaller than the Earth?', ['Mars', 'Saturn', 'Neptune', 'Jupiter'], 0),
  Q('Which instrument measures temperature?', ['Thermometer', 'Voltmeter', 'Speedometer', 'Barometer'], 0),
  Q('Which instrument measures air pressure?', ['Ammeter', 'Thermometer', 'Barometer', 'Seismograph'], 2),
  Q('Which is the largest organ of the human body?', ['Skin', 'Brain', 'Heart', 'Liver'], 0),
  Q('What is the freezing point of water in Fahrenheit?', ['100°F', '212°F', '0°F', '32°F'], 3),
  Q('Which gas is essential for burning?', ['Nitrogen', 'Helium', 'Oxygen', 'Carbon dioxide'], 2),
];
