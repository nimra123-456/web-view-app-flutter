import 'package:flutter/material.dart';

import '../components/list_tile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text("Notifications"),
        
        actions: [
          Image.asset(
            height:40,"assets/images/notification.png"),
           const Icon(Icons.mail_outline),
            

          Image.asset(
           
            height:40,"assets/images/more_icon.png"),

        ],),
        body:Padding(
          padding: const EdgeInsets.only(top:20),
          child: Column(children: const  [
             ListTileWidget(title:"Congratulations!", subTitle: "You have unlocked the SG55\nAchievement Badge! ",),
             SizedBox(height:30),
           ListTileWidget(title:"Congratulations!", subTitle: "You have unlocked the SG55\nAchievement Badge! ",),
             SizedBox(height:30),
           ListTileWidget(title:"Congratulations!", subTitle: "You have unlocked the SG55\nAchievement Badge! ",),
             SizedBox(height:30),
             
          ],),
        )

    );
  }
}

