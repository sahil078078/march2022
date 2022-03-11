import 'package:flutter/material.dart';

class MyFontApp extends StatelessWidget {
  const MyFontApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MyApp',
            style: TextStyle(fontFamily: 'Lintel', fontWeight: FontWeight.w300),
          ),
        ),
        body: Column(
          children: [
            Text(
              'Hello',
              style: getStyle(),
            ),
            Text(
              'World',
              style: getStyle2(),
            ),
            const Text(
              'Hello World',
              style:
                  TextStyle(fontFamily: "Poppins", fontStyle: FontStyle.italic),
            ),
            const Text(
              'Hello World',
              style:
                  TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle getStyle() {
    return const TextStyle(
      fontSize: 25,
      fontFamily: 'Lintelltalic',
    );
  }

  TextStyle getStyle2() {
    return const TextStyle(
      fontSize: 25,
      fontFamily: 'AntonRegular',
    );
  }
}
