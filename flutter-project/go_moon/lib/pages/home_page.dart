import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  late double  _deviceHeight, _deviceWidth;

   HomePage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.17),
          height: _deviceHeight,
          width: _deviceWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              _PageText(),
              _dropdownMenu()

            ]),
          ),
          ),
    );
  }

  Widget _PageText(){
    return const Text("GoMoon",
    style: TextStyle(color: Colors.white,
    fontSize: 70,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    ),
    );
  }

  Widget _MoonPage(){
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("images/moon.jpg")
            )
        ),
      );
  }

  Widget _dropdownMenu(){
    List<String> items = [
      "App Development",
      "Web Development",
    ];
     return Container(
      child: DropdownButton(
        underline: Container(),
        onChanged: (_){},
        items: items.map((e) {return DropdownMenuItem(
      value: e,
      child: Text(e),
       );
       }
       ).toList(),
      ),
     );
  }
}