import 'package:flutter/material.dart';

class Task_2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
          
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey,
                  ),
                  //width: double.infinity,
                    height: 50,
          
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Icon(Icons.search,color: Colors.orange),
                          Text('Search',style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    )
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  height: 50,
                    child: Icon(Icons.notifications,color: Colors.orange,))
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset('assets/images/img.jpg'),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                  color: Colors.grey,
                  height: 40,
                  width: 40,
                  child: Text('All' , style: TextStyle(
                   fontWeight: FontWeight.bold
                  ),
                  )
              ),
              SizedBox(
                width:30,
              ),
              Container(
                  color: Colors.grey,
                  height: 40,
                  width: 60,
                  child: Text('Category' , style: TextStyle(
                  fontWeight: FontWeight.bold
                  ),
                  )
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                  color: Colors.grey,
                  height: 40,
                  width: 40,
                  child: Text('Top' ,style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  )
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                  color: Colors.grey,
                  height: 40,
                  width: 70,
                  child: Text('Recommended' , style:TextStyle(
                    fontSize: 9 , fontWeight: FontWeight.bold
                  ),
                  )
              )
            ],
          ),
          ElevatedButton(onPressed: () {
            Navigator.of(context).pushNamed('routetask1');
          }, child: Text('Back to Task 1')
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
      ),
      ),
    );
  }
}
