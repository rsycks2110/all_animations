import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImplicitAnimationPage2 extends StatefulWidget{

  @override
  State<ImplicitAnimationPage2> createState() => _ImplicitAnimationPage2State();
}

class _ImplicitAnimationPage2State extends State<ImplicitAnimationPage2> {
  bool firstChild=true;

  double mVisibility=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cross Fade"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            firstChild=!firstChild;
            setState(() {

            });
          },
          child: AnimatedCrossFade(
            crossFadeState: firstChild==true? CrossFadeState.showFirst:CrossFadeState.showSecond,
            firstChild:Container(height: 100,width: 100,color: Colors.green,),
            secondChild:Icon(Icons.add,color: Colors.green,),
            duration:Duration(seconds: 3)
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context){
        //   ExplicitAnimation();
        // }));
      },child: Icon(Icons.add),),
    );
  }
}