import 'package:ala_nadafa/main_pages/log_in.dart';
import 'package:flutter/material.dart';

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
                Text(
                  "Exterminators",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color(0xFF477686)
                  ),
                ),
                SizedBox(height: 20,),
                Text("Sign Up",style: TextStyle(fontSize: 24,color: Color(0xFFB97059)),),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                  ),
                ),
                SizedBox(height: 30,),
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
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                    ),
                  ),
                ),
                SizedBox(height: 30,),
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
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm password",
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Sign Up"),
                    SizedBox(width: 20,),
                    Container(
                      width: 49,
                      height: 41,
                      decoration: BoxDecoration(
                        color: Color(0xFF477686),
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Container(
                          width: 257,
                          height: 15,
                          decoration: BoxDecoration(color: Color(0xFF477686)),
                        ),
                        Positioned(
                          child:InkWell(
                              onTap: ()=>
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => log_in()
                                      )
                                  ),
                              child: Text("Already have an account ??  Log In",style: TextStyle(color: Colors.black),)),
                          left: -16,
                          top: -12,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
        ),
      ),

    );
  }
}
