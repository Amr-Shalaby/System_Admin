import 'package:ala_nadafa/main_pages/main_screen.dart';
import 'package:ala_nadafa/main_pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'widgets/text_box.dart';
import 'widgets/sign_button.dart';


class log_in extends StatelessWidget {
  const log_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
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
      body: Container(
        width: 350,
        margin: EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            Text(
              "Exterminators",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF477686)
              ),
            ),
            SizedBox(height: 20,),
            Text("Welcome Back",style: TextStyle(fontSize: 24),),
            SizedBox(height: 70,),
            text_box(text: "Email", obscure: false),
            SizedBox(height: 70,),
            text_box(text: "password", obscure: true),
            SizedBox(height: 50,),
            sign_button(text: "Sign In", icon_name: Icons.arrow_back),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Container(
                        width: 143,
                        height: 15,
                        decoration: BoxDecoration(color: Color(0xFF477686)),
                      ),
                      Positioned(
                        child:Text("Forget Password ?",style: TextStyle(color: Colors.black),),
                      left: -16,
                      top: -12,
                      ),
                    ],
                  ),
                Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 15,
                      decoration: BoxDecoration(color: Color(0xFF477686)),
                    ),
                    Positioned(
                      child:InkWell(
                          onTap: ()=>
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => sign_up()
                                  )
                              ),
                          child: Text("Sign Up",style: TextStyle(color: Colors.black),)
                      ),
                      left: -16,
                      top: -12,
                    ),
                  ],
                ),
          ],
        ),
        ]
      ),
    ));
  }
}
