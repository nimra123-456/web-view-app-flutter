import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget {
    final List<Widget>  links;
  const NavigationBarWidget({Key? key, required this.links});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int selectedItemIndex=0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
       
        onTap: (index) {
        setState(() {
            selectedItemIndex = index;
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
              return widget.links[selectedItemIndex];
            })));
        });
        },

        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.white,
        currentIndex: selectedItemIndex ,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.fire_truck,), label:"CHALLENGE"),
         BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label:"BOARD"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: 'MarKet'),
          BottomNavigationBarItem(icon: Icon(Icons.ads_click_outlined),label: 'Post Add'),
           BottomNavigationBarItem(icon: Icon(Icons.more), label:"More"),
           
      ]);
  }
}
