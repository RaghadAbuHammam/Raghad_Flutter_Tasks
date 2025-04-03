import 'package:flutter/material.dart';

class Task_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blue,
    body: SafeArea(child: Column(
children: [
Padding(
  padding: const EdgeInsets.only(top: 60),
  child: Text('Sister',
  style: TextStyle(
    fontSize: 30,
  color: Colors.white,
  fontWeight: FontWeight.bold
  ),
  ),
),
Text('CALLING...',
style: TextStyle(
color: Colors.white,
),
),
SizedBox(
//width: 50,
height: 50,
),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Icon(Icons.person ,
      color: Colors.blue,),
    ),
    SizedBox(
      width: 40,
    ),

    Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Icon(Icons.add,
          color: Colors.blue),
    ),
    SizedBox(
      width: 40,
    ),

    Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Icon(Icons.mic_off,
          color: Colors.blue),
    ),

  ],
),
Row(
  children: [
    SizedBox(
      width: 70,
    ),
    Text('Contact',
    style: TextStyle(
      color: Colors.white
    ),
    ),
    SizedBox(
      width: 30,
    ),
    Text('AddCall',
      style: TextStyle(
          color: Colors.white
      ),
    ),
    SizedBox(
      width: 50,
    ),
    Text('Mute',
      style: TextStyle(
          color: Colors.white
      ),)
  ],
),
SizedBox(
height: 40,
),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Icon(Icons.pause,
          color: Colors.blue),
    ),
    SizedBox(
      width:35,
    ),

    Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Icon(Icons.videocam,
          color: Colors.blue),
    ),
    SizedBox(
      width: 50,
    ),
    Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Icon(Icons.call_end,
          color: Colors.blue),
    ),


],
),
Row(
  children: [
    SizedBox(
      width: 70,
    ),
    Text('Hold',
      style: TextStyle(
          color: Colors.white
      ),
    ),
    SizedBox(
      width: 40,
    ),
    Text('Video Call'
      ,
      style: TextStyle(
          color: Colors.white
      ),
    ),
    SizedBox(
      width: 40,
    ),
    Text('Record',
      style: TextStyle(
          color: Colors.white
      ),)
  ],
),
SizedBox(
height: 80,
),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
children: [
  Icon(Icons.volume_up ,
  color: Colors.white
  ),
  SizedBox(
    width: 70,
  ),
  Container(
    height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Icon(Icons.call_end,
      color: Colors.white
      )
  ),
  SizedBox(
    width: 50,
  ),
  Icon(Icons.dialpad ,
  color: Colors.white
  ),
],
),
  ElevatedButton(onPressed: () {
    Navigator.of(context).pushNamed('routetask1');
  }, child: Text('Go Back To Task 1')
  ),
  ElevatedButton(onPressed: () {
    Navigator.of(context).pushNamed('routetask3');
  }, child: Text('Back To Task 3')
  )
],
)
),
    );
  }
}
