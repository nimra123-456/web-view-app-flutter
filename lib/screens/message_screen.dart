
import 'package:flutter/material.dart';

import '../components/list_tile.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text("Inbox"),
        
        actions: [
          Image.asset(
            height:40,"assets/images/notification.png"),
           const Icon(Icons.mail_outline),
            

          Image.asset(
           
            height:40,"assets/images/more_icon.png"),

        ],),
        body:Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: const [
            ListTileWidget(title: "808 Cycles", subTitle: "Lorem ipeum"),
            SizedBox(height:30),
            ListTileWidget(title: "12 Cycle - Marine Parade", subTitle: "Lorem Ipeum"),
            SizedBox(height:30),
            ListTileWidget(title: "808 Cycle", subTitle: "[Garmin Edge 530]")
          ]),
        ));

  }
}