import 'package:flutter/material.dart';

class Screen_3 extends StatefulWidget {
  String e;
  Screen_3({required this.e});

  @override
  State<Screen_3> createState() => _Screen_3State();
}

class _Screen_3State extends State<Screen_3> {
  @override
  Widget build(BuildContext context) {
    //List<String> num =['5','3','0','|'];
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height:50,
              ),
              Text('Enter Your Verification Code ',
              style:  TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0
              ),
              ),
              SizedBox(
                height: 20,
              ),
              /*
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
               itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    color: Colors.orange,
                    child: Row(
                      children: [
                        Text(num[index]),
                      ],
                    ),
                  ),
                );
              },
                itemCount: num.length,
              ),
              */
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300,bottom: 10),
                child: Text('04:59',
                style: TextStyle(color: Colors.orange),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 20),
                child: Text('We Send Verification code to your email ${widget.e} You Can Check Your Inbox.'),
              ),
              Text('I didn\'t received the code ? Send again ',style: TextStyle(color: Colors.orange),),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {
                    print('Done');
                  }, child: Text('Verify',style: TextStyle(
                      color: Colors.white
                  ),
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
