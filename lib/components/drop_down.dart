import 'package:flutter/material.dart';

// class CustomDropdown extends StatefulWidget {
//   final String text;

//   const CustomDropdown({ Key? key, required this.text}) : super(key: key);

//   @override
//   _CustomDropdownState createState() => _CustomDropdownState();
// }

// class _CustomDropdownState extends State<CustomDropdown> {
//   late GlobalKey actionKey;
//   late double height, width, xPosition, yPosition;
//   bool isDropdownOpened = false;
//   late OverlayEntry floatingDropdown;

//   @override
//   void initState() {
//     actionKey = LabeledGlobalKey(widget.text);
//     super.initState();
//   }

//   void findDropdownData() {
//     RenderBox renderBox = actionKey.currentContext!.findRenderObject() as RenderBox;
//     height = renderBox.size.height;
//     width = renderBox.size.width;
//     Offset offset = renderBox.localToGlobal(Offset.zero);
//     xPosition = offset.dx;
//     yPosition = offset.dy;
  
//   }

//   OverlayEntry _createFloatingDropdown() {
//     return OverlayEntry(builder: (context) {
//       return Positioned(
//         left: xPosition +5  ,
//         width: width ,
//         top: yPosition + height-5,
//         height: 4 * height ,
//         child: DropDown(
//           itemHeight: height,
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       key: actionKey,
//       onTap: () {
//         setState(() {
//           if (isDropdownOpened) {
//             floatingDropdown.remove();
//           } else {
//             findDropdownData();
//             floatingDropdown = _createFloatingDropdown();
//             Overlay.of(context)!.insert(floatingDropdown);
//           }

//           isDropdownOpened = !isDropdownOpened;
//         });
//       },
//       child: Container(
//         width:150,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           // color: Colors.red.shade600,
//           color:Colors.transparent
         
//         ),
//         padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
//         child: Row(
//           children: <Widget>[
//             Text(
//               widget.text,
//               style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
//             ),
//             SizedBox(width:20),
           
//             const Icon(
//               Icons.arrow_drop_down_sharp,
//               color: Colors.white,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DropDown extends StatelessWidget {
//   final double itemHeight;

//   const DropDown({Key? key, required this.itemHeight}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         const SizedBox(
//           height: 5,
//         ),
        
//         Material(
//           elevation: 20,
//           // shape: ArrowShape(),
//           child: Container(
//            // padding:EdgeInsets.only(left:10,right:5,top:10),
//             height: 3 * itemHeight ,
//             width:250,
//           color:Colors.transparent,
            
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 DropDownItem.first(
//                   text: "My Challenges",
//                   iconData: Icons.add_circle_outline,
//                   isSelected: false,
//                 ),
//                 Divider(height: 10,),
//                 const DropDownItem(
//                   text: "Current Challenges",
                 
//                   isSelected: false,
//                 ),
//                  Divider(height: 10,),
//                 const DropDownItem(
//                   text: "Post Challenges",
                  
//                   isSelected: false,
//                 ),
             
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class DropDownItem extends StatelessWidget {
//   final String text;
//   final IconData? iconData;
//   final bool isSelected;
//   final bool isFirstItem;
//   final bool isLastItem;

//   const DropDownItem({Key? key, required this.text,  this.iconData, this.isSelected = false, this.isFirstItem = false, this.isLastItem = false})
//       : super(key: key);

//   factory DropDownItem.first({required String text, required IconData iconData, required bool isSelected}) {
//     return DropDownItem(
//       text: text,
//       iconData: iconData,
//       isSelected: isSelected,
//       isFirstItem: true,
//     );
//   }

//   factory DropDownItem.last({required String text, required IconData iconData, required bool isSelected}) {
//     return DropDownItem(
//       text: text,
   
//       isSelected: isSelected,
//       isLastItem: true,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  Padding(
//       padding: const EdgeInsets.only(left:15, top:10),
//       child: Text(
//           text,
//           style: TextStyle(color: Colors.black, fontSize:15,),
//         ),
//     );
    
//   }
// }


class DropDownBar extends StatefulWidget {
  const DropDownBar({super.key});

  @override
  State<DropDownBar> createState() => _DropDownBarState();
}

class _DropDownBarState extends State<DropDownBar> {
    String? dropdownvalue = 'My Challenge';
  var list = ["My Challenge","My board"];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      
      
      dropdownColor: Colors.black,
      style: const TextStyle(color:Colors.white),
      value:dropdownvalue,
      items: list.map((item) => DropdownMenuItem(
        value:item,
        child:Text(item) )).toList(), onChanged: (newVal){
         setState(() {
            dropdownvalue = newVal;
         });
        });
  }
}
