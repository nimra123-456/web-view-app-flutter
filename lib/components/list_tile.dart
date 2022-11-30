import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final  String subTitle;

  const ListTileWidget({
    Key? key, required this.title, required this.subTitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(leading:Container(
      padding:const EdgeInsets.all(10.0),
      height:40,
      width:40,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.amber[700]) ,
      child: Image.asset(
        "assets/images/challenge.png",color: Colors.white,)),
    title:Text(title,textAlign: TextAlign.left,style:const TextStyle(fontSize:20,fontWeight: FontWeight.bold,height: 1.0)),
    subtitle: Text(subTitle,textAlign: TextAlign.left,style:const TextStyle(fontSize:15,fontWeight: FontWeight.w700)),
    trailing:const  Icon(Icons.lock_clock),
    );
  }
}