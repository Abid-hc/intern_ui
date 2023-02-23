import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorDark = Color.fromRGBO(136, 28, 32, 1);
const colorGreen=Color.fromRGBO(33, 191, 115, 1);
const colorBlue=Color.fromRGBO(52, 152, 219,1.0);
const colorOrange=Color.fromRGBO(230, 126, 34,1.0);
const colorWhite=Color.fromRGBO(255, 255, 255,1.0);
const colorDarkBlue=Color.fromRGBO(44, 62, 80,1.0);
const colorLightGray=Color.fromRGBO(135, 142, 150, 1.0);
const colorLight=Color.fromRGBO(211, 211, 211, 1.0);


SvgPicture ScreenBackground(context) {
  return SvgPicture.asset(
    'assests/images/backe.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

TextStyle Head1Text(textColor){
  return TextStyle(
    color: textColor,
    fontSize: 28,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w700,
  );
}


TextStyle Head6Text(textColor){
  return TextStyle(
      color: textColor,
      fontSize: 14,
      fontFamily: 'poppins',
      fontWeight: FontWeight.w400
  );
}

TextStyle Head2Text(textColor){
  return TextStyle(
    color: textColor,
    fontSize: 18,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w700,
  );
}



BoxDecoration CardDecoratin(){
  return BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color:colorLightGray ,

  );
}

BoxDecoration CardviewDecoratin(){
  return BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: colorLight,

  );
}

ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20),
  backgroundColor: Colors.green,
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(30)),
  )
  );
}

