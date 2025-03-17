import 'package:flutter/material.dart';

class Task_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(child:
      Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 140),
                child: Row(
                  children: [
                    Text('Sister',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                width: 100,

                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Icon(Icons.person,
                size: 70,
                color: Colors.white,),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Row(
                  children: [
                  SizedBox(
                  height: 240,
                  ),
                    Text('CALLING...',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20
                    ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                      child: Icon(Icons.call , color: Colors.green)),

                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                    child: Icon(Icons.call_end , color: Colors.red)
                  ),
              ]
              ),
              Row(
                children: [
                  SizedBox(
                    height: 90),
                  Padding(
                    padding: const EdgeInsets.only(left: 135),
                    child: Text('Send Massage',
                    style: TextStyle(
                      backgroundColor: Colors.grey,
                      color: Colors.white
                    ),),
                  )
                ],
              )
          ],
                ),
        ),
      ),
    ),
    );
  }
}
