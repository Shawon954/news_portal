import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_portal/page_view/homepage.dart';
class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

  @override
  void initState() {
   Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsAppScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffe9f1c7),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Divider(height: 100,),
              Image.asset("assets/images/newspaperimage.png",fit: BoxFit.cover,
            ),
              Divider(
                height: 100,
              ),
              Text("News Paper",style: TextStyle(fontSize: 30,fontFamily: "RubikWetPaint",color: Colors.indigoAccent),)
            ],

          ),
        ),
      ),
    );
  }
}
