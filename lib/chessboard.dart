import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChessPage extends StatefulWidget {
  const ChessPage({Key? key}) : super(key: key);

  @override
  State<ChessPage> createState() => _ChessPageState();
}

class _ChessPageState extends State<ChessPage> {
   int _pageIndex = 0;
   Color colorChecker1 = Colors.white;
   Color colorChecker2 = Colors.black;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double widhtSize = size.width / 8;
    final double heightSize = size.height % widhtSize;

    final array1 = [Container(width: widhtSize, height: widhtSize,
      margin: EdgeInsets.only(left: widhtSize),
      color: colorChecker2),
      Container(width: widhtSize, height: widhtSize,
        margin: EdgeInsets.only(left: widhtSize,),
        color: colorChecker2),
      Container(width: widhtSize, height: widhtSize,
        margin: EdgeInsets.only(left: widhtSize),
        color: colorChecker2),
      Container(width: widhtSize, height: widhtSize,
        margin: EdgeInsets.only(left: widhtSize),
        color: colorChecker2),
    ];
    final array2 = [Container(width: widhtSize, height: widhtSize,
      margin: EdgeInsets.only(right: widhtSize),
      color: colorChecker2),
      Container(width: widhtSize, height: widhtSize,
        margin: EdgeInsets.only(right: widhtSize,),
        color: colorChecker2),
      Container(width: widhtSize, height: widhtSize,
        margin: EdgeInsets.only(right: widhtSize),
        color: colorChecker2),
      Container(width: widhtSize, height: widhtSize,
        margin: EdgeInsets.only(right: widhtSize),
        color: colorChecker2),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Сhecker_Board"),
        centerTitle: true,
      ),
      body: Container(
        color: colorChecker1,
        child: Column(
          children: [
            Row(children: array1),
            Row(children: array2),
            Row(children: array1),
            Row(children: array2),
            Row(children: array1),
            Row(children: array2),
            Row(children: array1),
            Row(children: array2),
            Row(children: array1),
            Row(children: array2),
            Row(children: array1),
            Row(children: array2),
            Row(children: array1),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: 'Blue'),
          BottomNavigationBarItem(icon: Icon(Icons.autorenew), label: 'Green'),
          BottomNavigationBarItem(icon: Icon(Icons.autorenew), label: 'Red'),
        ],
        currentIndex: _pageIndex,
        onTap: _onTap,
      ),
    );
  }
   void _onTap(index){
     setState(() {
       if(_pageIndex == 0){
         colorChecker1 = Colors.white;
         colorChecker2 = Colors.blue.shade800;
         _pageIndex = index;
       }
       if(_pageIndex == 1){
         colorChecker1 = Colors.blueGrey.shade200;
         colorChecker2 = Colors.green.shade600;
         _pageIndex = index;
       }
       if(_pageIndex == 2){
         colorChecker1 = Colors.white70;
         colorChecker2 = Colors.red;
         _pageIndex = index;
       }
     });
   }
}

