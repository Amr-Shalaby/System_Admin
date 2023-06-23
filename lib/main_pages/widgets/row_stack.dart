import 'package:flutter/material.dart';

class row_stack extends StatelessWidget {
  late double width;
  late double height;
  late double pos_left;
  late double pos_right;
  late String text;
  late Widget navigate;
  row_stack({Key? key,required double width,required double height,
    required double pos_left,required double pos_right ,required String text,
    required Widget navigate}) : super(key: key){
    this.text=text;
    this.height=height;
    this.navigate=navigate;
    this.width=width;
    this.pos_left=pos_left;
    this.pos_right=pos_right;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(color: Color(0xFF477686)),
            ),
            Positioned(
              child:InkWell(
                  onTap: ()=>
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => navigate
                        )
                        ),
                  child: Text("$text",style: TextStyle(color: Colors.black),)),
              left: pos_left,
              top: pos_right,
            ),
          ],
        ),
      ],
    );
  }
}
