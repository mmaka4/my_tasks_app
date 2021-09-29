import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Tasks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const SizedBox(
                width: double.infinity,
                child: Padding (
                  padding: EdgeInsets.all(6),
                  child: Text(
                    'Login',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
            ),

           Padding (
             padding: const EdgeInsets.only(left: 6.0, right: 6.0),
             child: Row(
                 children: <Widget> [
                   Text(
                     "Don't have an account? ",
                     textAlign: TextAlign.start,
                     style: TextStyle(color: Colors.grey.shade700),
                   ),
                   TextButton(
                     style: ButtonStyle(
                       padding: MaterialStateProperty.all(
                           const EdgeInsets.symmetric(vertical: 0, horizontal: 2)),
                     ),
                     onPressed: () => {},
                     child: const Text(
                       "Create one here.",
                       textAlign: TextAlign.start,
                       style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                   ),
                 ]
             ),
           ),

           const Padding(
               padding: EdgeInsets.only(left: 6.0,bottom: 6.0, right: 6.0),
               child: TextField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: 'Email',
                   hintText: 'Enter Email'
             ),
           )),

            const Padding(
                padding: EdgeInsets.all(6),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter password'
                  ),
                )),

            SizedBox(
              width: double.infinity,
              child: Padding (
                padding: const EdgeInsets.all(6),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Log In'),
                ),)
            ),
          ],
        ),
      ),

    );
  }
}
