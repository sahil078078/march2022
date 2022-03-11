import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> gender = [
    {'value': 'Male', 'icon': 'images/king.png'},
    {'value': 'Female', 'icon': 'images/queen.png'}
  ];
  String genderSelection = '';
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GenderSelection'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: gender.map((val) {
                int index = gender.indexOf(val);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      genderSelection = val['value'];
                      currentIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: currentIndex == index
                          ? BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent, width: 5),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey)
                          : BoxDecoration(
                              border: Border.all(
                                  width: 5, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        // child: Text('${val['value']}'),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(val['icon']),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
                width: 100,
                height: 30,
                child: Card(
                    child: Center(
                  child: Text(
                    genderSelection,
                    style: TextStyle(color: Colors.black),
                  ),
                ))),
          ],
        ),
      ),
    );
  }
}
