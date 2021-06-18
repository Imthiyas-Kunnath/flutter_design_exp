import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Second Page"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: FlatButton(
            onPressed: () {
              showToast(
                "Second Page toast",
                duration: Duration(seconds: 2),
              );
            },
            child: Text('Show'),
          ),
        ),
      ),
    );
  }
}
