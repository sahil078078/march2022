import 'dart:developer';

import 'package:flutter/material.dart';

class MyAsynchronousApp extends StatefulWidget {
  const MyAsynchronousApp({Key? key}) : super(key: key);

  @override
  State<MyAsynchronousApp> createState() => _MyAsynchronousAppState();
}

class _MyAsynchronousAppState extends State<MyAsynchronousApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Asynchronous",
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Async"),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count'),
              ElevatedButton(
                onPressed: () {
                  clickMe();
                },
                child: const Text("ClickMe"),
              ),
            ],
          )),
        ),
      ),
    );
  }

  void clickMe() {
    test();
    setState(() {
      count++;
      log('YouClicked Button $count');
    });
  }

  void test() async {
    await Future.delayed(const Duration(seconds: 5), () {
      log('YouClicked2');
    });
    log('YouClicked3');
    log('YouClicked4');
    await Future.delayed(const Duration(seconds: 7), () {
      log('YouClicked5');
    });
    log("hey there");
  }
}
