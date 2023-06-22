
import 'package:flutter/material.dart';
import 'package:live_streaming_screen_sharing/service.dart';



class Jobseekers extends StatelessWidget {
  Jobseekers({Key? key}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(450, 40), backgroundColor: Color.fromARGB(255, 98, 63, 255).withOpacity(0.6),
    );

    return Scaffold(
      // backgroundColor: Color.fromARGB(0, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           

TextFormField(
              controller: codeTextCtrl,
              decoration: const InputDecoration(labelText: ''),
            ),







         TextFormField(
              controller: nameTextCtrl,
              decoration: const InputDecoration(hintText: ''),
            ),


            const SizedBox(height: 20),
      
            const SizedBox(height: 20),
            // click me to navigate to LivePage
            ElevatedButton(
              style: buttonStyle,
              child: const Text('Join'),
              onPressed: () => jumpToLivePage(
                context,
                liveID: codeTextCtrl.text,
                isHost: false,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void jumpToLivePage(BuildContext context,
      {required String liveID, required bool isHost}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LivePage(
          liveID: liveID,
          isHost: isHost,
     
        ),
      ),
    );
  }
}

// integrate code :


