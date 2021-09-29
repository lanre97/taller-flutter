import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Capacitacion 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cronómetro"),
        ),
        body: Body(),
      )
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("00:00", style: TextStyle(fontSize: 40.0),),
          SizedBox(height: 20),
          SizedBox(
            height: 200.0,
            width: 200.0,
            child: CircularProgressIndicator(value: 0.0, strokeWidth: 10, backgroundColor: Colors.grey.shade300,),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Icon(Icons.not_started_outlined)),
              SizedBox(width: 20),
              ElevatedButton(onPressed: null, child: Icon(Icons.pause))
            ],
          )
        ],
      ),
    );
  }
}





