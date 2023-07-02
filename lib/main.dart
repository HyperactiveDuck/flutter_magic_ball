import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );


class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
int ballNumber = 1;

void changeBallNumber(){
  ballNumber = Random().nextInt(5)+1;
}


  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            changeBallNumber();
          });
        },
        child: Container(
          child: Image(image: AssetImage('images/ball$ballNumber.png'),),
        ),
      ),
    );
  }
}



    class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 11, 58, 97),
        title: Text('Ask me anything'),
      ),
    body: Ball(),
    );
  }
}