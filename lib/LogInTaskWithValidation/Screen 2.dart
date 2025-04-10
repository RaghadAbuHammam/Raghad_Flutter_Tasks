import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen_2 extends StatefulWidget {
  const Screen_2({super.key});

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  final FK=GlobalKey<FormState>();
  TextEditingController c1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child: Container(
          width: double.infinity,
          child: Column(
            children: [
              //Lottie.network('https://lottie.host/e81b50e5-ca0f-4763-8480-fd0fe75f44ac/kCVMfREZ2C.json'),
              Text('Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Row(
                  children: [
                    Text('Let\'s Get Started',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text('Create An Account',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              Form(
                key: FK,
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 200,top: 20),
                    child: Text('Email OR Mobile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,left: 10),
                    child: TextFormField(
                      controller: c1,
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
                                width: 3
                              )
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,right: 220),
                    child: Text('PassWord',
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
                          hintText: '**********',
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
                                width: 3
                              )
                          )
                      ),
                    ),
                  ),
                ],
              )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 220),
                child: Row(
                  children: [
                    Text('Forget PassWord?',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  ],
                ),
              ),
              /*
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {
                    if(FK.currentState!.validate()){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)) => Screen_3(c1.text)
                      );
                      //Navigator.of(context).pushNamed('routescreen3',arguments: c1.text);
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
               */
              Padding(
                padding: const EdgeInsets.only(left: 100),
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
        )
        ),
      ),
    );
  }
}
