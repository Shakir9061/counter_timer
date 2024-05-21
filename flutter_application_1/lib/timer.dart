import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';


class Timer_app extends StatefulWidget {
  const Timer_app({super.key});
  

  @override
  State<Timer_app> createState() => _Timer_appState();
}

class _Timer_appState extends State<Timer_app> {
  TextEditingController? time;
   TimeOfDay? res;
   var t;
   void picktime(){
    setState(() {
      res=t;
    });
   }
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Timer App',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              child: TextFormField(
                controller: time,
                decoration: InputDecoration(border: OutlineInputBorder(),suffixIcon:IconButton(
                  onPressed: () {
                    t=showTimePicker(context: context, initialTime: TimeOfDay.now());
                    picktime();
                   
                  
                    
                    
                  },
                  icon: Icon(Icons.timer)) ),
              ),
            ),
           
           
          ],
        ),
      ),
    );
  }
}