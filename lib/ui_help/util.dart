
import 'package:flutter/material.dart';

TextStyle myTextStyle1(){
  return TextStyle(
    fontSize: 27,
    color: Colors.red,
    fontWeight: .w500
  );
}
TextStyle myTextStyle2({FontStyle myFontStyle = .italic , Color myColor = Colors.grey, FontWeight myFontWeight = .bold}){
  return TextStyle(
    color: myColor,
    fontWeight: myFontWeight,
    fontStyle: myFontStyle,
    fontSize: 25
  );
}