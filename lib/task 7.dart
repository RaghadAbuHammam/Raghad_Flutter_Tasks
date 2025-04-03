import 'package:flutter/material.dart';

class Task_7 extends StatefulWidget {
  const Task_7({super.key});

  @override
  State<Task_7> createState() => _Task_7State();
}

class _Task_7State extends State<Task_7> {
  @override
  Widget build(BuildContext context) {
    List<String>num=['1','2','3','4','5','6','7','8','9',' ','0','<--'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xCD5625ab),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(Icons.assistant_navigation,color: Colors.white),
                  Text('Audit',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Text('Sign In',
            style: TextStyle(color: Colors.white)),
            Icon(Icons.sort,color: Colors.white)
          ],
        ),
      ),
      body: Stack(
        children:[
          Container(
          color: Color(0xCDddcfee),
        ),
          Container(
            margin: EdgeInsets.only(bottom: 250),
            decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
            ,color: Color(0xCDfefefe),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 310),
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.elliptical(200, 50))
            ,color: Color(0xCD8b51bc),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 310),
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.elliptical(50,20),topRight: Radius.elliptical(60,65)),
            color: Color(0xCD4f2ab0),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Icon(Icons.person),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Shelton Cooper'),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 105,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color(0xCD3726b7),
                      shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xCDe8e8ea),
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xCDe8e8ea),
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xCDe8e8ea),
                        shape: BoxShape.circle
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 220,right: 60,left: 60,bottom: 30),
            decoration: BoxDecoration(color: Colors.white,
            ),
            child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Center(
                    child: Card(
                      color: Colors.white,
                      child: Text(num[index]),
                    ),
                  );
                },
              itemCount: num.length,
            )
            ),
      ],
      ),

    );
  }
}
