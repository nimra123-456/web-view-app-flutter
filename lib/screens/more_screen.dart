import 'package:flutter/material.dart';


class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<String>  images = ["assets/images/rides.png","assets/images/magazine.png","assets/images/forum.png","assets/images/bikeShop.png","assets/images/careers.png","assets/images/advertise.png","assets/images/about.png","assets/images/terms.png"];
  List<String> titles= ["Rides","Magazine","Forum","Bike Shop","Careers","Advertise on Togoparts","About Togoparts","Terms of Service"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    body:ListView.separated(
      
      itemCount: images.length,
      separatorBuilder: (context, index) {
        return Divider(height:10);
      },
      itemBuilder: (context, index) {
        return SizedBox(
          height:50,
          child: ListTile(
            leading:Image.asset(
              height:30,
              images[index]),
              title: Text(titles[index]),
          ),
        );
      
    },)
    );
  }
}