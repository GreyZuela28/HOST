import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';



final String localUserID = Random().nextInt(100000).toString();

final nameTextCtrl = TextEditingController(text: 'Enter Name');

 final codeTextCtrl = TextEditingController(text: Random().nextInt(10000).toString());//code

class LivePage extends StatefulWidget {
  final String liveID;
  final bool isHost;

  const LivePage({
    Key? key,
    required this.liveID,
    this.isHost = false,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => LivePageState();
}

class LivePageState extends State<LivePage> {
  ZegoUIKitPrebuiltLiveStreamingController? liveController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID:258875269,
        appSign: '5364968bbf7d9bd78e8eb3bf10db4dec771fd6602082ac3c8ec7445e6525bdbc',
        userID: localUserID,
         userName: nameTextCtrl.text,
        liveID: widget.liveID,
        controller: liveController,
        config: (widget.isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host(
                plugins: [ZegoUIKitSignalingPlugin()],
              )
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(
                plugins: [ZegoUIKitSignalingPlugin()],
              ))
          ..maxCoHostCount = 12
          ..onMaxCoHostReached = (int count) {
            debugPrint('onMaxCoHostReached:$count');
          },
      ),
    );
  }
}