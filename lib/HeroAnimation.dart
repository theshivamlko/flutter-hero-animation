import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
   HeroAnimation({ Key key, this.photo, this.onTap, this.width ,this.index}) : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.all(5.0),
      child: Hero(

          flightShuttleBuilder: (
              BuildContext flightContext,
              Animation<double> animation,
              HeroFlightDirection flightDirection,
              BuildContext fromHeroContext,
              BuildContext toHeroContext,
              ) {
            final Hero toHero = toHeroContext.widget;
            return RotationTransition(
              turns: animation,
              child: toHero.child,
            );
          },
        tag: photo+index.toString(),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}