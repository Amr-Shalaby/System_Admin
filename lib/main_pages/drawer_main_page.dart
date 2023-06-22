import 'package:flutter/material.dart';

class drawer_main_page extends StatelessWidget {
  const drawer_main_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Exterminators"),
                  accountEmail: Text("Exterminators@gmail.com"),
                decoration: BoxDecoration(
                  color: Color(0xFF477686),
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About Us"),
              ),
              ListTile(
                leading: Icon(Icons.video_file),
                title: Text("How to use it"),
              ),
              ListTile(
                leading: Icon(Icons.price_change),
                title: Text("Pricing"),
              )
            ],
        ),
    );
  }
}
