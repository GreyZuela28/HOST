
import 'package:flutter/material.dart';
import 'package:live_streaming_screen_sharing/service.dart';
import 'package:share_plus/share_plus.dart';





class Employeer extends StatelessWidget {
  Employeer({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(450, 40), backgroundColor: Color.fromARGB(255, 112, 90, 255).withOpacity(0.6),
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

  ElevatedButton(
              style: buttonStyle,
              onPressed: (){
                            Share.share(codeTextCtrl.text);
                            //subject is optional, and it is required for Email App.
                       },
              child: const Text('share'),
              
              ),
            
            const SizedBox(height: 20),
            // click me to navigate to LivePage
            ElevatedButton(
              style: buttonStyle,
              child: const Text('Start'),
              onPressed: () => jumpToLivePage(
                context,
                liveID: codeTextCtrl.text,
                isHost: true,
              ),
            ),
            const SizedBox(height: 20),
            // click me to navigate to LivePage
          
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

