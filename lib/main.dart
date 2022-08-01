import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Clicker Counter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Row Sample'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 100.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 30.0, 10.0, 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/song.png'),
              radius: 25.0,
            ),
          ),
          Divider(
            height: 90.0,
            color: Colors.amberAccent,
          ),
          SizedBox(height: 20.0),
          Text(
            'Name',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 50.0),
          Text('Prenom',
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 4.0,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 50.0),
          Text('$ninjalevel',
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 4.0,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 50.0),
          Row(children: <Widget>[
            Icon(
              Icons.email,
              color: Colors.grey[400],
            ),
            SizedBox(width: 10.0),
            Text(
              'rahmabalti02@gmail.com',
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
