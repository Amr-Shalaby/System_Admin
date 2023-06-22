import 'package:flutter/material.dart';
import 'drawer_main_page.dart';

class main_screen extends StatelessWidget {
  const main_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer_main_page(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Exterminators",style: TextStyle(color: Color(0xFF477686)),),
        centerTitle: true,
        elevation:0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                   Container(
                      width: 70,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text("Sign Up",style: TextStyle(color: Colors.black),),
                    ),
                   Container(
                      width: 60,
                      height: 35,
                      color: Colors.black,
                      alignment: Alignment.center,
                      child: Text("Log In",style: TextStyle(color: Colors.white),),
                    ),
                ]
            ),
          )
        ],
        iconTheme: IconThemeData(color: Color(0xFF477686)),
      ),
      body: Container(
        width: 350,
        margin: EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
              Image.asset("assets/images/studying-concept-illustration.png"),
            Text(
              "Exterminators",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF477686)
              ),
            ),
            SizedBox(height: 30,),
            Text(
                "Nobody Is born with the knowledge of “everything”",
                style: TextStyle(
                    fontSize: 16
                ),
            ),
            SizedBox(height: 22,),
            Text(
                "Be a learner & you will start knowingmany things...",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF0262D0),
                ),
            ),
            SizedBox(height: 22,),
            Text(
                ''''“However difficult life may seem,there is always something you can do and succeed at.”''',
              style: TextStyle(
                color: Color(0xFF616161),
                fontSize: 18
              ),
            ),
            Row(
              children: [
                Text(
                  '''― STEPHEN HAWKING''',
                  style: TextStyle(
                      color: Color(0xFF616161),
                      fontSize: 18
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      );
  }
}
