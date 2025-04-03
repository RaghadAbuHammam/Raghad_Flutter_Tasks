/*
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Task_9 extends StatefulWidget {
  const Task_9({super.key});

  @override
  State<Task_9> createState() => _Task_9State();
}

class _Task_9State extends State<Task_9> {
  final FK=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Forms')),
        backgroundColor: Colors.black12,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: FK,
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //FormClass(labl: 'E_mai', hint: 'ex@domain.com', preIcon: Icons.mail),
              //FormClass(labl: 'PassWord', hint: '*****', preIcon: Icons.password,postIcon: Icons.remove_red_eye_outlined,),
              //Lottie.network('https://lottie.host/dfbfdbc6-1596-45e1-8cff-9198c4abed5a/CORHgHPE1z.json'),
              TextFormField(
                validator: (value) {
                  if(value!.length<8){
                    return 'please Enter 8 char at least';
                  }
                  else{
                    return null;
                  }
                },
                  decoration: InputDecoration(
                    label: Text('PassWord'),
                    hintText: '*****',
                    prefix: Icon(Icons.mail),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2
                      ),
                    ),
                  )
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {
                if(FK.currentState!.validate()){
                  print('Pass');
                }
              }, child: Text('Log In'))
        
            ],
          ),
        )
        ),
      ),

    ) ;
  }
}

class FormClass extends StatelessWidget {
  String labl;
  String hint;
  IconData preIcon;
  IconData? postIcon;

  FormClass({required this.labl,
    required this.hint,
    required this.preIcon,
  this.postIcon});

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            label: Text(labl),
            hintText: hint,
            prefix: Icon(preIcon),
            suffix: Icon(postIcon),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black,
                  width: 2
          ),
        ),
    )
        ),

        SizedBox(
          height: 20,
        ),
/*
        TextFormField(
            decoration: InputDecoration(
              label: Text('PassWord'),
              hintText: '*****',
              prefix: Icon(Icons.password),
              suffix: Icon(Icons.remove_red_eye_outlined),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2
                  )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black,
                    width: 2
                ),
              ),
            )
        ),
*/
      ]
      ),
    )
    );
  }
}
*/
