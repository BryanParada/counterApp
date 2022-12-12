
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
 
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10;

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);
 
    return Scaffold(
      //backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
      ),
      body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  
              children: [ //const <Widget>
              const Text('Count Clicks', style: fontSize30),
              Text('$counter', style: fontSize30),  //counter.toString()
            ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const CustomFloatingActions(),

    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,  //spaceAround
      children: const [
        FloatingActionButton(
          onPressed: null,
          child: Icon( Icons.exposure_plus_1_outlined),

        ),
 
        FloatingActionButton(
          onPressed: null,
          child: Icon( Icons.home ),

        ),
 
        FloatingActionButton(
          onPressed: null,
          child: Icon( Icons.exposure_minus_1_outlined),

        ),


      ],
    );
  }
}