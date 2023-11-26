import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Color Style
Color whiteColor = const Color(0xffFFFFFF);
Color blackColor = const Color(0xff14193f);
Color greyColor = const Color(0xffA4A8AE);
Color darkGreyColor = const Color.fromARGB(255, 141, 144, 150);
Color blueColor = const Color(0xff53C1F9);
Color darkBlueColor = const Color.fromARGB(255, 41, 20, 107);
Color greenColor = const Color(0xff22B07D);
Color numberBackgroundColor = const Color(0xff1A1D2E);
Color lightBackgroundColor = const Color.fromARGB(255, 225, 236, 255);
Color darkBackgroundColor = const Color(0xff020518);
Color redColor = const Color.fromARGB(148, 255, 57, 57);

// Note
// 0x digunakan untuk mengindikasi akan menggunakan hexnumber
// ff diawal sebelum kode warna mengindikasi bahwa menggunakan opacity 100%

//Text Style
TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: greyColor,
);

TextStyle blueTextStyle = GoogleFonts.poppins(
  color: blueColor,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: greenColor,
);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: redColor,
);

//Font Weight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
