import 'package:ala_nadafa/main_pages/log_in.dart';
import 'package:flutter/material.dart';
import 'widgets/text_box.dart';
import 'widgets/sign_button.dart';
import 'widgets/row_stack.dart';

import 'main_screen.dart';

class sign_up extends StatelessWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: ()=>
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => main_screen()
                    )
                ),
            child: Icon(Icons.arrow_back_ios_new,color: Color(0xFF477686),)
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            width: 350,
            margin: EdgeInsets.only(left: 15,right: 15),
            child:Column(
              children: [
                Text("Exterminators", style: TextStyle(fontSize: 40, color: Color(0xFF477686)),),
                SizedBox(height: 20,),
                Text("Sign Up",style: TextStyle(fontSize: 24,color: Color(0xFFB97059)),),
                SizedBox(height: 30,),
                text_box(text:"Name",obscure: false, ),
                SizedBox(height: 30,),
                text_box(text:"Email",obscure: false, ),
                SizedBox(height: 30,),
                text_box(text:"Phone Number",obscure: false, ),
                SizedBox(height: 30,),
                text_box(text:"password",obscure: true, ),
                SizedBox(height: 30,),
                text_box(obscure: true,text:  "Confirm password"),
                SizedBox(height: 30,),
                sign_button(icon_name: Icons.arrow_forward,text: "Sign Up"),
                SizedBox(height: 30,),
                row_stack(
                    width: 257,
                    height: 15,
                    pos_left: -16,
                    pos_right: -12,
                    text: "Already have an account ??  Log In",
                    navigate:log_in()
                ),
              ],
            ),
        ),
      ),
    );
  }
}
