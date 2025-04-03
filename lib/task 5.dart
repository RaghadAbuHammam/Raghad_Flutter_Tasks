import 'package:flutter/material.dart';

//buttons
class Task_5 extends StatefulWidget {
  @override
  State<Task_5> createState() => _Task_5State();
}
class _Task_5State extends State<Task_5> {
  Color color=Colors.grey;
  Color colorAB=Colors.blue;
  List<String> colors=[
    'select value',
    'red',
    'yallow',
    'green'
  ];
  String initValue='select value';
  String? selecteditem;
  @override
  Widget build(BuildContext context) {
    //String initValue=colors.first;
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: colorAB,
        title: Center(
          child: Text('Buttons'
          ),
        ),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return colors.map((color){
              return PopupMenuItem(child: Text(color),
                  value:color,
              );
              }).toList();
          },
          onSelected: (newvalue) {
            setState(() {
              selecteditem=newvalue;

              switch(selecteditem){
                case 'red':
                  colorAB=Colors.red;

                case 'yallow':
                  colorAB=Colors.yellowAccent;

                case 'green':
                  colorAB=Colors.green;

                case 'select value':
                  colorAB=Colors.blue;
              }
            });
          },
          )
        ],
      ),
      body:Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey
                ),
                value: initValue,
                items: colors.map((color){
                  return DropdownMenuItem(child: Text(color),value: color,);
                }).toList(),
                onChanged: (newvalue) {
                  setState(() {
                    initValue=newvalue!;

                    switch(initValue){
                      case 'red':
                        color=Colors.red;

                      case 'yallow':
                        color=Colors.yellow;

                      case 'green':
                        color=Colors.green;

                      case 'select value':
                        color=Colors.grey;
                    }
                  }
                  );
                },
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
