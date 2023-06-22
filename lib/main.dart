import 'package:flutter/material.dart';
import 'package:live_streaming_screen_sharing/employeer.dart';
import 'jobseekers.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '', home: HomePage());
  }
}


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);


 

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(400, 40),
      );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
   

   ElevatedButton(
              style: buttonStyle,
          
              child: const Text('Employeer'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Employeer()));
              }
            ),
            const SizedBox(height: 20),


ElevatedButton(
              style: buttonStyle,
              child: const Text('Job Seekers'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Jobseekers()));
              }
            )







          ],
        ),
      ),
    );
  }
}






