
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
 
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10;

  void increase(){
    counter ++;
    setState(() {});
  }

  void decrease(){
    counter --;
    setState(() {});
  }

    void reset(){
    counter = 0;
    setState(() {});
  }

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
          floatingActionButton: CustomFloatingActions( 
            increaseFn: increase,
            decreaseFn: decrease,
            resetFn   : reset ), //se envia como argumento, no como ejecucion

    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;


  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn,
    required this.decreaseFn, 
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,  //spaceAround
      children:  [
        FloatingActionButton(
          child: const Icon( Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(),

        ),
 
        FloatingActionButton(
          child: const Icon( Icons.home ),
          onPressed: () => resetFn(),

        ),
 
        FloatingActionButton(
          child: const Icon( Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),

        ),


      ],
    );
  }
}