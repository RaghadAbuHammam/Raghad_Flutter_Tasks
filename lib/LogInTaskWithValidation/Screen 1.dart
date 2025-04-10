import 'package:flutter/material.dart';

class Screen_1 extends StatefulWidget {
  const Screen_1({super.key});

  @override
  State<Screen_1> createState() => _Screen_1State();
}

class _Screen_1State extends State<Screen_1> {
  final FK=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 75,
              ),
              Text('Register',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120,top: 20),
                child: Text('Let\'s Get Started',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text('Create An Account',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey
                  ),
                ),
              ),
              Form(
                key: FK,
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250,top: 20),
                    child: Text('Full Name',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,left: 10),
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'Please Enter Your Name,This filed Requeue ';
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Ex:Ean J.Smail',
                          hintStyle: TextStyle(color: Colors.grey ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xCDFFBB00)
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xCDFFBB00),
                                  //width: 3
                              )
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 270,top: 20),
                    child: Text('Email',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,left: 10),
                    child: TextFormField(
                      validator: (value) {
                        if(value!.length<8){
                          return 'must be length greater than 8';
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'example@gmail.com',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.grey[100],
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade100
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey,
                                  //width: 3
                              )
                          )
                      ),
                    ),
                  ),
                  Text('______________________  or  ______________________'),
                  Padding(
                    padding: const EdgeInsets.only(right: 220,top: 20),
                    child: Text('Phone Number',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,left: 10),
                    child: TextFormField(
                      validator: (value) {
                        if(value!.length<10){
                          return 'must be length greater than 8';
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: '+91 Enter Mobile Number',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.grey[100],
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade100
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey,
                                  //width: 3
                              )
                          )
                      ),
                    ),
                  ),
                ],
              )
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {
                    if(FK.currentState!.validate()){
                      Navigator.of(context).pushNamed('routescreen2');
                    }
                  }, child: Text('Register',style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  children: [
                    Text('Already have Account? ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        color: Colors.deepPurple
                      ),
                    ),
                    Text(' Sign In',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        color: Colors.orange
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ) ;
  }
}
