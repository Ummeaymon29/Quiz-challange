// ================= Technology - প্রশ্নের তালিকা =================
// মোট ৬০টি প্রশ্ন:
//   Level 1 = ১ম ১০টি, Level 2 = ২য় ১০টি, Level 3 = ৩য় ১০টি,
//   Level 4 = ৪র্থ ১০টি, Level 5 = ৫ম ১০টি (ধাপে ধাপে কঠিন)
//   শেষ ১০টি = EXTRA প্রশ্ন (সব level-এর pool-এ যোগ হয়; এতে প্রতিবার খেললে নতুন প্রশ্ন আসে)
//   নতুন প্রশ্ন বাড়াতে চাইলে তালিকার শেষে যোগ করুন, বাকি সব নিজে থেকেই কাজ করবে।
// প্রশ্ন বদলাতে চাইলে শুধু এই ফাইল এডিট করলেই হবে।
// Q('প্রশ্ন', ['অপশন০', 'অপশন১', 'অপশন২', 'অপশন৩'], সঠিক_index)

import '../models/question.dart';

const List<Q> technology = [
  // Level 1
  Q('What does CPU stand for?', ['Central Program Unit', 'Control Processing Unit', 'Central Processing Unit', 'Computer Personal Unit'], 2),
  Q('Which device is mainly used for typing?', ['Keyboard', 'Printer', 'Mouse', 'Monitor'], 0),
  Q('Which of these is an input device?', ['Monitor', 'Mouse', 'Printer', 'Speaker'], 1),
  Q('Which of these is an output device?', ['Monitor', 'Keyboard', 'Scanner', 'Mouse'], 0),
  Q('What does WWW stand for?', ['Web World Wide', 'World Wide Web', 'World Web Wide', 'Wide World Web'], 1),
  Q('Which of these is a search engine?', ['Windows', 'Android', 'Intel', 'Google'], 3),
  Q('Which company makes the iPhone?', ['Nokia', 'Google', 'Samsung', 'Apple'], 3),
  Q('Which of these is a web browser?', ['Chrome', 'Word', 'Windows', 'Excel'], 0),
  Q('What does USB stand for?', ['United Serial Bus', 'Universal Serial Board', 'Universal Serial Bus', 'Universal System Bus'], 2),
  Q('Which symbol is used in every email address?', ['\$', '&', '@', '#'], 2),
  // Level 2
  Q('Who co-founded Microsoft with Paul Allen?', ['Elon Musk', 'Bill Gates', 'Mark Zuckerberg', 'Steve Jobs'], 1),
  Q('Which of these is an operating system?', ['Android', 'Oracle', 'Python', 'HTML'], 0),
  Q('What does RAM stand for?', ['Read Access Memory', 'Random Access Memory', 'Run Active Memory', 'Rapid Access Memory'], 1),
  Q('Which programming language is used to build Flutter apps?', ['Ruby', 'Dart', 'PHP', 'Swift'], 1),
  Q('Which company owns Android?', ['Microsoft', 'Google', 'Intel', 'Apple'], 1),
  Q('HTML is used to create the ___ of web pages.', ['battery', 'sound', 'database', 'structure'], 3),
  Q('What does Wi-Fi provide?', ['Printing paper', 'Wireless internet access', 'Sound recording', 'Wired power supply'], 1),
  Q('How many bits are there in 1 byte?', ['16', '2', '4', '8'], 3),
  Q('Which key deletes the character to the left of the cursor?', ['Shift', 'Tab', 'Backspace', 'Enter'], 2),
  Q('Which website is the world\'s largest online encyclopedia?', ['Wikipedia', 'Amazon', 'YouTube', 'Netflix'], 0),
  // Level 3
  Q('The binary number system uses which digits?', ['0 and 2', '1 and 2', '0 and 1', '0 to 9'], 2),
  Q('Who founded Facebook?', ['Larry Page', 'Mark Zuckerberg', 'Jack Dorsey', 'Elon Musk'], 1),
  Q('Which language is used to style web pages?', ['SQL', 'Python', 'HTML', 'CSS'], 3),
  Q('What is the file extension of a Python file?', ['.py', '.pt', '.pyt', '.python'], 0),
  Q('What does GPS stand for?', ['Global Positioning System', 'Great Place System', 'General Position System', 'Global Position Satellite'], 0),
  Q('Which of these is a programming language?', ['USB', 'Java', 'Wi-Fi', 'HTTP'], 1),
  Q('1 Kilobyte (KB) is approximately?', ['100 bytes', '512 bytes', '1024 bytes', '1000 bits'], 2),
  Q('Which company created the Windows operating system?', ['IBM', 'Microsoft', 'Google', 'Apple'], 1),
  Q('Which of these is a database system?', ['Notepad', 'Photoshop', 'MySQL', 'Chrome'], 2),
  Q('What does AI stand for?', ['Automatic Internet', 'Applied Interface', 'Artificial Intelligence', 'Advanced Input'], 2),
  // Level 4
  Q('What does HTTP stand for?', ['HyperTool Transfer Program', 'HyperText Transmission Process', 'High Transfer Text Protocol', 'HyperText Transfer Protocol'], 3),
  Q('Who invented the World Wide Web?', ['Vint Cerf', 'Bill Gates', 'Linus Torvalds', 'Tim Berners-Lee'], 3),
  Q('Linus Torvalds created which kernel?', ['DOS', 'Unix', 'Linux', 'Solaris'], 2),
  Q('Which data structure follows the LIFO rule?', ['Tree', 'Queue', 'Stack', 'Array'], 2),
  Q('Which data structure follows the FIFO rule?', ['Graph', 'Tree', 'Queue', 'Stack'], 2),
  Q('Which protocol is used for secure web browsing?', ['Telnet', 'HTTPS', 'SMTP', 'FTP'], 1),
  Q('What does SQL stand for?', ['Standard Question Language', 'Structured Question List', 'Simple Query Logic', 'Structured Query Language'], 3),
  Q('Which company originally developed the Java language?', ['Sun Microsystems', 'Microsoft', 'Apple', 'IBM'], 0),
  Q('What is the full form of PDF?', ['Printed Data Format', 'Public Document File', 'Personal Document Form', 'Portable Document Format'], 3),
  Q('What does IP stand for in \'IP address\'?', ['Information Packet', 'Interface Port', 'Internet Protocol', 'Internal Program'], 2),
  // Level 5
  Q('What is the time complexity of binary search?', ['O(n)', 'O(1)', 'O(log n)', 'O(n²)'], 2),
  Q('Who is regarded as the first computer programmer?', ['Grace Hopper', 'Ada Lovelace', 'Charles Babbage', 'Alan Turing'], 1),
  Q('Which sorting algorithm has O(n log n) average time?', ['Selection sort', 'Insertion sort', 'Merge sort', 'Bubble sort'], 2),
  Q('What does DNS do?', ['Translates domain names to IP addresses', 'Encrypts files', 'Blocks viruses', 'Stores emails'], 0),
  Q('Which keyword is used to create a class in Dart and Java?', ['class', 'object', 'define', 'func'], 0),
  Q('Which company launched ChatGPT?', ['Google', 'Meta', 'Microsoft', 'OpenAI'], 3),
  Q('Which of these is a NoSQL database?', ['MongoDB', 'MySQL', 'Oracle', 'PostgreSQL'], 0),
  Q('What is the default port number of HTTP?', ['443', '25', '21', '80'], 3),
  Q('Which Git command makes a local copy of a remote repository?', ['git push', 'git clone', 'git commit', 'git init'], 1),
  Q('Which company developed Flutter?', ['Meta', 'Apple', 'Microsoft', 'Google'], 3),
  // Extra pool (random replacement questions)
  Q('What does GUI stand for?', ['Graphical User Interface', 'General User Interface', 'Graphical Unit Input', 'Global User Index'], 0),
  Q('Which of these is Apple\'s mobile operating system?', ['iOS', 'Windows Phone', 'Android', 'Symbian'], 0),
  Q('What does LAN stand for?', ['Linked Access Node', 'Large Area Network', 'Local Area Network', 'Long Area Network'], 2),
  Q('Which device is used to point and click on a screen?', ['Mouse', 'Scanner', 'Keyboard', 'Speaker'], 0),
  Q('Which of these is a cloud storage service?', ['Paint', 'Calculator', 'Notepad', 'Google Drive'], 3),
  Q('What does URL stand for?', ['Uniform Resource Locator', 'Universal Resource Link', 'Uniform Retrieval Locator', 'United Resource Locator'], 0),
  Q('Which shortcut copies the selected text on Windows?', ['Ctrl + X', 'Ctrl + Z', 'Ctrl + C', 'Ctrl + V'], 2),
  Q('Which of these is a code hosting / version control platform?', ['Spotify', 'GitHub', 'Zoom', 'WhatsApp'], 1),
  Q('Which company makes the Pixel phones?', ['Huawei', 'Apple', 'Samsung', 'Google'], 3),
  Q('What does ROM stand for?', ['Random Output Memory', 'Run Once Memory', 'Read Only Memory', 'Read Output Module'], 2),
];
