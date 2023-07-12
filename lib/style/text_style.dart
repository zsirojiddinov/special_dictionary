import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/dimens.dart';
import 'colors.dart';

TextStyle get titleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font20,
      fontWeight: FontWeight.bold,
      color: MyColor.textColor,
    ),
  );
}

TextStyle get textStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font14,
      color: MyColor.textColor,
    ),
  );
}

TextStyle get descriptionStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font12,
      color: MyColor.textColor,
    ),
  );
}

TextStyle get errorStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font12,
      color: Colors.red,
    ),
  );
}

TextStyle get h1Style {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

TextStyle get hintStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font16,
      fontWeight: FontWeight.normal,
      color: Get.isDarkMode ? Colors.grey[200] : Colors.grey,
    ),
  );
}
