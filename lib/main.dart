import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.red,
          accentColor: Colors.purple,
          textTheme: TextTheme(
            bodyText2: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
          )),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Basic Demo')),
        body: Center(
          child: Text('Hello Flutter Layouts'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.light_mode_outlined),
          onPressed: () {
            print('debug text');
          },
        ),
        persistentFooterButtons: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_comment)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_alarm)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_location)),
        ],
      ),
    );
  }
}
