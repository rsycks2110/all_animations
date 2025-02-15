import 'package:flutter/material.dart';

import 'crossfade_page.dart';

class ImplicitAnimationPage extends StatefulWidget{

  @override
  State<ImplicitAnimationPage> createState() => _ImplicitAnimationPageState();
}

class _ImplicitAnimationPageState extends State<ImplicitAnimationPage> {
  double mHeight=100;

  double mWidth=200;

  Color mColor = Colors.green;

  double bRadius= 20;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implicit Animations"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
         mHeight = mHeight==100? 200:100;
         mWidth = mWidth==200? 100:200;
         mColor = mColor==Colors.green? Colors.red:Colors.green;
         bRadius = bRadius==20? 10:20;
         setState(() {

         });
          },
          child: AnimatedContainer(
              duration: Duration(seconds: 4),
          height: mHeight,
            width: mWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(bRadius),
              color: mColor
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
         return ImplicitAnimationPage2();
        }));
      },child: Icon(Icons.add),),
    );
  }
}
