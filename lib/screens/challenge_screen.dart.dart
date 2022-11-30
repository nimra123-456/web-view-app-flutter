import 'dart:io';

import 'package:flutter/material.dart';
import 'package:togoparts/screens/more_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../components/drop_down.dart';
import 'message_screen.dart';
import 'notification_screen.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({super.key});

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  double progressIndication = 0;
  int selectIndex = 0;
  List<String> links = [
    "https://www.togoparts.com/home",
    "https://www.togoparts.com/bikeprofile/trides/",
    "https://www.togoparts.com/marketplace/browse",
    "https://www.togoparts.com/marketplace/create/"
  ];
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  late WebViewController webViewController;

  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: selectIndex == links.length
              ? const Text("More")
              : const DropDownBar(),
          actions: [
            GestureDetector(
              onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()))),
              child: Image.asset(height: 40, "assets/images/notification.png"),
            ),
            GestureDetector(
                onTap: (() => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MessageScreen()))),
                child: const Icon(Icons.mail_outline)),
            PopupMenuButton<int>(
                onSelected: (value) => onSelected(value),
                icon: Image.asset(height: 40, "assets/images/more_icon.png"),
                itemBuilder: (context) => [
                      const PopupMenuItem<int>(
                          value: 0, child: Text("My Account")),
                      const PopupMenuItem<int>(
                          value: 1, child: Text("Settings")),
                      const PopupMenuItem<int>(value: 2, child: Text("Logout")),
                    ]),
          ],
        ),
        body: Column(children: [
          progressIndication < 1
              ? SizedBox(
                  height: 5,
                  child: LinearProgressIndicator(
                    color: Colors.red,
                    value: progressIndication,
                  ),
                )
              : SizedBox(),
          Expanded(
            child: selectIndex == links.length
                ? const MoreScreen()
                : WebView(
                    initialUrl: links.elementAt(selectIndex),
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (c) {
                      webViewController = c;
                    },
                    onProgress: (progress) => setState(() {
                      progressIndication = progress / 100;
                    }),
                  ),
          )
        ]),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            onTap: (index) {
              setState(() {
                selectIndex = index;
                if (selectIndex != links.length) {
                  webViewController.loadUrl(links.elementAt(selectIndex));
                }
              });
            },
            currentIndex: selectIndex,
            selectedItemColor: Colors.amber[900],
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    height: 30,
                    "assets/images/challenge.png",
                    color: selectIndex == 0 ? Colors.amber[900] : Colors.white,
                  ),
                  label: "CHALLENGE"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    height: 30,
                    "assets/images/board.png",
                    color: selectIndex == 1 ? Colors.amber[900] : Colors.white,
                  ),
                  label: "BOARD"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    height: 30,
                    "assets/images/marketplace.png",
                    color: selectIndex == 2 ? Colors.amber[900] : Colors.white,
                  ),
                  label: 'MarKet'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    height: 30,
                    "assets/images/profile.png",
                    color: selectIndex == 3 ? Colors.amber[900] : Colors.white,
                  ),
                  label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    height: 30,
                    "assets/images/more.png",
                    color: selectIndex == 4 ? Colors.amber[900] : Colors.white,
                  ),
                  label: "More"),
            ]));
  }

  onSelected(int value) {
    switch (value) {
      case 0:
        break;
      case 1:
        return 0;
      case 2:
        webViewController.loadUrl(links.elementAt(3));
        break;
    }
  }
}
