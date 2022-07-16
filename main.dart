import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade300,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3
              ),
            ),
          ),
          backgroundColor: Colors.green.shade700,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),),),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceFace(){
    setState(() {
      rightDiceNumber = Random().nextInt(6)+1;
      leftDiceNumber = Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            Expanded(child: TextButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),

            ),
            ),
            Expanded(child: TextButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),

            ),
            ),
          ],
        ),
        // Row(
        //   children: [
        //     Expanded(child: TextButton(
        //       onPressed: (){
        //         setState(() {
        //           leftDiceNumber = 3;
        //         });
        //       },
        //       child: Image.asset('images/dice$leftDiceNumber.png'),
        //
        //     ),
        //     ),
        //     Expanded(child: TextButton(
        //       onPressed: (){
        //         setState(() {
        //           leftDiceNumber = 3;
        //         });
        //       },
        //       child: Image.asset('images/dice$leftDiceNumber.png'),
        //
        //     ),
        //     ),
        //     Expanded(child: TextButton(
        //       child: Image.asset('images/dice2.png'),
        //       onPressed: (){}  ,
        //     ),
        //     ),
        //   ],
        // ),
        //
        // Row(
        //   children: [
        //     Expanded(child: TextButton(
        //       onPressed: (){
        //         setState(() {
        //           leftDiceNumber = 3;
        //         });
        //       },
        //       child: Image.asset('images/dice$leftDiceNumber.png'),
        //
        //     ),
        //     ),
        //     Expanded(child: TextButton(
        //       onPressed: (){
        //         setState(() {
        //           leftDiceNumber = 3;
        //         });
        //       },
        //       child: Image.asset('images/dice$leftDiceNumber.png'),
        //
        //     ),
        //     ),
        //     Expanded(child: TextButton(
        //       child: Image.asset('images/dice2.png'),
        //       onPressed: (){}  ,
        //     ),
        //     ),
        //   ],
        // ),

      ],
    );
  }
}



