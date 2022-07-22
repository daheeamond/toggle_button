import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Toggle_button')),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/물결2.jpeg'),
                fit: BoxFit.cover
            ),
          ),
          child: Center(
              child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white70),
                  child:Text('Welcome MyApp',
                      style: TextStyle(color: Colors.black,fontSize: 25)))),
        )
    );
  }
}
