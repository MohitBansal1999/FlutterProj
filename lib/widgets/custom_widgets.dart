import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? btnTextStyle;
  final VoidCallback? btnCallBack;


  RoundedButtonWidget({
    required this.btnName,
    this.icon,
    this.bgColor = Colors.blue,
    this.btnTextStyle,
    this.btnCallBack});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(onPressed: () {
      btnCallBack!();

    }, child: icon!=null ? Row(
      children: [icon! , Text(btnName, style: btnTextStyle,),],mainAxisAlignment: .center,spacing: 5,
    ) : Text(btnName,style: btnTextStyle,),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(
            Radius.circular(10)
          )
        )
      ),
    );
  }
}
