
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
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  //spaceAround
            children: [
              FloatingActionButton(
                child: const Icon( Icons.exposure_plus_1_outlined),
                onPressed: () { 

                  counter++; 
                  //notifica que hubo un cambio en el estado y debe redibujarse
                  setState(() { });
                 },

              ),

              const SizedBox( width: 20,),

              FloatingActionButton(
                child: const Icon( Icons.home ),
                onPressed: () { 

                  counter = 0; 
                  //notifica que hubo un cambio en el estado y debe redibujarse
                  setState(() { });
                 },

              ),

              const SizedBox( width: 20,),

              FloatingActionButton(
                child: const Icon( Icons.exposure_minus_1_outlined),
                onPressed: () { 

                  counter--; 
                  //notifica que hubo un cambio en el estado y debe redibujarse
                  setState(() { });
                 },

              ),


            ],
          ),

    );
  }
}