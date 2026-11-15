// ================= Question Model =================
// একটা প্রশ্নের ডাটা কীভাবে রাখা হয় তা এখানে ঠিক করা আছে।
//   text = প্রশ্ন, opts = ৪টি অপশন, ans = সঠিক অপশনের index (0-3)

class Q {
  final String text;
  final List<String> opts;
  final int ans;
  const Q(this.text, this.opts, this.ans);
}
