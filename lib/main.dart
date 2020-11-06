import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  // double rating = 0.0;
  var rating = 0.0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Slider Widget'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300.0,
                child: Slider(
                  value: rating,
                  onChanged: (newRating) {
                    setState(() {
                      rating = newRating;
                    });
                  },
                  divisions: 4,
                  label: "$rating",
                  min: 0,
                  max: 100,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0),
                Text(
                  'Rating Value: '
                  '$rating',
                  style: TextStyle(fontSize: 25.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
