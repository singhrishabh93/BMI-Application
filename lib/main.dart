import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFirstApp',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  RangeValues values = RangeValues(0, 100);
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar: AppBar(
          title: Text("Basic Claculation"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: RangeSlider(
          values: values,
          labels: labels,
          divisions: 10,
          activeColor: Colors.green,
          inactiveColor: Colors.green.shade100,
          min: 0,
          max: 100,
          onChanged: (newValue) {
            print("${newValue.start}, ${newValue.end}");
            values = newValue;
            setState(() {});
          },
        ));
  }
}