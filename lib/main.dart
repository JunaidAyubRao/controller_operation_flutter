import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff89f7fe), Color(0xff66a6ff)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 330,
              child: TextField(
                  keyboardType: TextInputType.number,
                  controller: textEditingController1,
                  decoration: const InputDecoration(
                      labelText: 'firstNumber',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(width: 3)))),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 330,
              child: TextField(
                  keyboardType: TextInputType.number,
                  controller: textEditingController2,
                  decoration: const InputDecoration(
                      labelText: 'SecondNumber',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(width: 3)))),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 330,
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var no1 =
                              int.parse(textEditingController1.text.toString());

                          var no2 =
                              int.parse(textEditingController2.text.toString());
                          var sum = no1 + no2;
                          result = 'The Addition :$sum';
                        });
                      },
                      child: const Text('+')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var no1 =
                              int.parse(textEditingController1.text.toString());

                          var no2 =
                              int.parse(textEditingController2.text.toString());
                          var sum = no1 - no2;
                          result = 'The Subtraction is :$sum';
                        });
                      },
                      child: const Text('-')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var no1 =
                              int.parse(textEditingController1.text.toString());

                          var no2 =
                              int.parse(textEditingController2.text.toString());
                          var sum = no1 * no2;
                          result = 'The Multiplication is :$sum';
                        });
                      },
                      child: const Text('x')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var no1 =
                              int.parse(textEditingController1.text.toString());

                          var no2 =
                              int.parse(textEditingController2.text.toString());
                          var sum = no1 / no2;
                          result = 'The Division is :$sum';
                        });
                      },
                      child: const Text('/')),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              result,
              style: const TextStyle(color: Colors.blue, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
