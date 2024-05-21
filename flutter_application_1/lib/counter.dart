import 'package:flutter/material.dart';

class Counter_app extends StatefulWidget {
  const Counter_app({super.key});

  @override
  State<Counter_app> createState() => _Counter_appState();
}

class _Counter_appState extends State<Counter_app> {
  var counter=0;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Counter App',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           counter!=null?Text('$counter'):Text(''),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(onPressed: () {
             setState(() {
                               counter++;

             });
               
              }, child: Text('Click')),
            )
          ],
        ),
      ),
    );
  }
}