import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sign_button extends StatelessWidget {
  late var icon_name;
  late String text;
  sign_button({Key? key,required String text ,required var icon_name}) : super(key: key){
    this.icon_name=icon_name;
    this.text=text;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("$text"),
        SizedBox(width: 20,),
        Container(
          width: 49,
          height: 41,
          decoration: BoxDecoration(
            color: Color(0xFF477686),
            borderRadius: BorderRadius.all(Radius.circular(60)),
          ),
          child: Icon(
            icon_name,
            color: Colors.white,
            size: 40,
          ),
        )
      ],
    );
  }
}
