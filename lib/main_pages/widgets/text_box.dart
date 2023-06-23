import 'package:flutter/material.dart';

class text_box extends StatelessWidget {
  late String text;
  late bool obscure;
   text_box({Key? key,required String text,required bool obscure}) : super(key: key){
    this.text=text;
    this.obscure=obscure;
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        height: 50,
        padding: EdgeInsets.only(left: 20,right: 20),
        child: TextFormField(
          obscureText: obscure,
          decoration: InputDecoration(
            labelText: "$text",
          ),
        ),
      );
  }
}
