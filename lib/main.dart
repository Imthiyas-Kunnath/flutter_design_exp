import 'package:flutter/material.dart';
import 'Pages/SecondPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()//
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack bar'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
       //     _showToast(context,"ting");
            _goToNextPage(context);
          },
          child: const Text('Show toast'),
        ),
      ),
    );
  }
}
void _goToNextPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => new SecondPage(),
    ),
  );
}


void _showToast(BuildContext context,String text) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content:  Text(text),
      ),
  );
}
