import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loomi/utils/custom_colors.dart';

abstract class CustomFontStyle {
  static final titleStyle = GoogleFonts.openSans(
      fontWeight: FontWeight.bold,
      fontSize: 36,
      color: CustomColors.defaultFontColor);
  static final subTitleStyle = GoogleFonts.openSans(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: CustomColors.defaultFontColor);
  static final inputTextStyle = GoogleFonts.openSans(
      fontSize: 16, color: const Color.fromARGB(210, 255, 255, 255));
  static final defaultTextStyle = GoogleFonts.openSans(
      fontSize: 16,
      color: CustomColors.defaultFontColor,
      fontWeight: FontWeight.bold);
  static final defaultTextStyle2 = GoogleFonts.openSans(
    fontSize: 16,
    color: CustomColors.textColor,
  );
  static final inputTextStyle2 = GoogleFonts.openSans(
      fontSize: 14, color: const Color.fromARGB(179, 255, 255, 255));
  static final buttonTextStyle = GoogleFonts.openSans(
    fontSize: 13,
  );

  static final buttonTextStyle2 = GoogleFonts.openSans(
      fontSize: 13,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 255, 253, 253));
  static final titleStyle2 = GoogleFonts.openSans(
      fontSize: 32, fontWeight: FontWeight.bold, color: CustomColors.textColor);
  static final subtitleStyle2 = GoogleFonts.openSans(
      fontSize: 22, fontWeight: FontWeight.bold, color: CustomColors.textColor);
  static final subtitleStyle = GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.bold, color: CustomColors.textColor);
  static final subtitleStyle3 = GoogleFonts.openSans(
      fontSize: 18, fontWeight: FontWeight.bold, color: CustomColors.textColor);
  static final indexStyle = GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: CustomColors.indexColor);
}
