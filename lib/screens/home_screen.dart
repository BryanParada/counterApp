
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
 
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      //backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('HomeScreen'),
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
          //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            child: const Icon( Icons.add),
            onPressed: () { 
              counter++; 
              print('you just clicked the button $counter');
             },

          ),

    );
  }

}