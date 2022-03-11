import 'package:flutter/material.dart';

class ExapantionTileDesign extends StatelessWidget {
  const ExapantionTileDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'ExapantionTile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 3,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    title: Text("Marvel's Avengers"),
                    subtitle: Text('Release : 2012'),
                    leading: Icon(Icons.play_circle_fill),
                    trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                    initiallyExpanded: false,
                    children: [
                      ListTile(
                        title: Text('Box office: 151.9 crores USD'),
                        subtitle: Text('Budget: 22 crores USD'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    leading: Icon(Icons.play_circle_filled),
                    title: Text('Avengers : Age of Ultron'),
                    subtitle: Text('Release : 2015'),
                    trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                    children: [
                      ListTile(
                        subtitle: Text(
                            'Budget: : \$444–495.2 million (gross); \$365 million (net)'),
                        title: Text('Box office: \$1.403 billion'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
