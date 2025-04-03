import 'package:flutter/material.dart';

class Task_6 extends StatefulWidget {
  const Task_6({super.key});

  @override
  State<Task_6> createState() => _Task_6State();
}

class _Task_6State extends State<Task_6> {
  @override
  Widget build(BuildContext context) {
    List<String> name=['Home','Contact','Map','Phone','Camera','Setting','Album','WiFi'];
    List<IconData> icons=[Icons.home,Icons.contacts,Icons.map,Icons.phone,Icons.camera,Icons.settings,Icons.album,Icons.wifi];
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter GridView Demo',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)
          , itemBuilder: (context, index) {
        return Card(
          child: Container(
color: Colors.orange,
            child: Column(
              children: [
                SizedBox(height: 10),
                Icon(icons[index],
                size: 60,
                ),
                SizedBox(height: 15),
                Text(name[index]),
              ],
            ),
          ),
        );
          },
        itemCount: name.length,
      ),
    );
  }
}
