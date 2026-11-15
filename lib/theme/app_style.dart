// ================= App Style (রং ও ডিজাইন) =================
// পুরো অ্যাপের রং, background, বাটন ও card-এর ডিজাইন এখানে।
// রং বদলাতে চাইলে শুধু এই ফাইলে বদলান।
//
// রঙের নিয়ম (সব হালকা purple, ক্রমশ আরও হালকা):
//   * Home screen        -> হালকা purple থেকে আরও হালকা (gradientBody)
//   * বাকি সব screen      -> খুব হালকা purple থেকে সাদা (lightBody)

import 'package:flutter/material.dart';

// গাঢ় purple শুধু ছোট জায়গায় (icon, লেখা) ব্যবহার হয়, background-এ নয়
const Color kPurpleDark = Color(0xFF673AB7);
const Color kPurpleText = Color(0xFF311B92); // purple লেখার রং
const Color kHomeTop = Color(0xFFB39DDB); // Home-এর উপরের হালকা purple
const Color kHomeBottom = Color(0xFFF3EEFB); // Home-এর নিচের আরও হালকা রং
const Color kLightTop = Color(0xFFEDE7F6); // খুব হালকা purple (deepPurple.shade50)

// Home screen-এর background: হালকা purple -> আরও হালকা
Widget gradientBody(Widget child) => Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [kHomeTop, kHomeBottom]),
      ),
      child: SafeArea(child: child),
    );

// বাকি সব screen-এর background: খুব হালকা purple -> সাদা
Widget lightBody(Widget child) => Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [kLightTop, Colors.white]),
      ),
      child: SafeArea(child: child),
    );

// বাটনের মূল রং (মাঝারি purple, সাদা লেখা)
const Color kBtn = Color(0xFF7E57C2);

// গোল বাটনের style। ডিফল্ট: purple বাটন, সাদা লেখা।
// সাদা বাটন চাইলে: bigBtn(Colors.white, kPurpleDark)
// ছোট মাপের বাটন চাইলে তৃতীয় অংশে size দিন, যেমন Size(0, 48)
ButtonStyle bigBtn([Color c = kBtn, Color fg = Colors.white, Size size = const Size(240, 52)]) =>
    ElevatedButton.styleFrom(
      backgroundColor: c,
      foregroundColor: fg,
      minimumSize: size,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );

// card-এর ডিজাইন (হালকা ছায়া সহ)
BoxDecoration cardBox([Color color = Colors.white, double radius = 18]) => BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      boxShadow: const [
        BoxShadow(color: Color(0x26000000), blurRadius: 8, offset: Offset(0, 3)),
      ],
    );

// Home screen-এর সাজানোর জন্য হালকা গোল আকৃতি
Widget decoCircle(double size) => Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0x40FFFFFF)),
    );
