import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  bool check=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 20,),
          TextField(
             obscureText: check,
            decoration: InputDecoration(
              prefixIcon:Icon(Icons.password),
              suffixIcon: InkWell(onTap: () {
                setState(() {
                  check=!check;
                });
              },
                  child:check? Icon(Icons.visibility_off) : Icon(Icons.remove_red_eye_outlined))
            ),
          )
        ],
      )
      ),
    );
  }
}
