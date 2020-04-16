import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hero_animation/HeroAnimation.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return HeroAnimation(
                index: index,
                photo: "images/pichai.jpg",
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration:
                          Duration(seconds: 1),
                          pageBuilder: (_, __, ___) =>
                              HeroAnimation(
                                index: index,
                                photo: "images/pichai.jpg",
                                onTap: (){
                                  Navigator.pop(context);
                                },
                              )));
                },
              );
            },
            itemCount: 10,
          ),
        ));
  }
}
