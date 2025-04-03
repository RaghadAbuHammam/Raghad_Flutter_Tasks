import 'package:flutter/material.dart';

class Task_8 extends StatefulWidget {
  const Task_8({super.key});

  @override
  State<Task_8> createState() => _Task_8State();
}

class _Task_8State extends State<Task_8> {
  String? name;
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Text Field Task')
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 30,left: 30,top: 100),
        child: Column(
          children: [
            TextField(
              onChanged: (newval) {
                setState(() {
                  name=newval;
                });
              },
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black12,
                labelText:'Name',
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'FirstName_LastName'
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () {
              print(name);
            },
                child:Text('Click Here')
            ),
            SizedBox(
              height: 30,
            ),
            Text('${controller.text}')
          ],
        ),
      ),
    );
  }
}
