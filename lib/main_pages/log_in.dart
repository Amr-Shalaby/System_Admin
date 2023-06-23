import 'package:ala_nadafa/main_pages/main_screen.dart';
import 'package:ala_nadafa/main_pages/sign_up.dart';
import 'package:flutter/material.dart';

class log_in extends StatelessWidget {
  const log_in({Key? key}) : super(key: key);

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
            Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
            ),
            SizedBox(height: 70,),
            Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "password",
                ),
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Sign In"),
                SizedBox(width: 20,),
                Container(
                  width: 49,
                  height: 41,
                  decoration: BoxDecoration(
                      color: Color(0xFF477686),
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40,
                  ),
                )
              ],
            ),
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
