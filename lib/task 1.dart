import 'package:flutter/material.dart';
import 'package:flutter_1/task 2.dart';

class Task_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Text Widget Example',
        style: TextStyle(
          color: Colors.white,
          height: 20
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150 , horizontal: 0),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Icon(Icons.open_with),
                ],
                //crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment(20, 20),
                child: Row(
                  children: [
                    Text('Hello World !\nThis is a Text Widget.',
                    style: TextStyle(
                      color: Colors.purple,
                      wordSpacing: 12,
                      fontSize: 15,
                      backgroundColor: Colors.yellow,
                    ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed('routetask2');
              //Navigator.of(context).push(MaterialPageRoute(builder: (_) => Task_3(),));
            }, child: Text('Go To Task 2')
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed('routetask3');
            }, child: Text('Go to Task 3')
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed('routetask4');
            }, child: Text('Go to Task 4')
            )
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
