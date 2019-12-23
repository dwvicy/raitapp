import 'package:flutter/material.dart';
import 'package:raitapp/ui/pages/app_theme.dart';
import 'package:raitapp/ui/pages/example.dart';
import 'package:simple_animations/simple_animations.dart';

class Box extends StatelessWidget {
  static final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [AppTheme.crimson, AppTheme.black]),
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(100.0),
          topLeft: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)),
      boxShadow: [
        BoxShadow(
            color: AppTheme.black,
            blurRadius: 5,
            offset: Offset(0, 2),
            spreadRadius: 2)
      ]);

  @override
  Widget build(BuildContext context) {
    return ControlledAnimation(
      duration: Duration(milliseconds: 400),
      tween: Tween(begin: 0.0, end: 80.0),
      builder: (context, height) {
        return ControlledAnimation(
          duration: Duration(milliseconds: 1200),
          delay: Duration(milliseconds: 500),
          tween: Tween(begin: 2.0, end: 300.0),
          builder: (context, width) {
            return Container(
              decoration: boxDecoration,
              width: width,
              height: height,
              child: isEnoughRoomForTypewriter(width)
                  ? TypewriterText("Welcome to RAIT!")
                  : Container(),
            );
          },
        );
      },
    );
  }

  isEnoughRoomForTypewriter(width) => width > 25;
}

class TypewriterText extends StatelessWidget {
  static const TEXT_STYLE = TextStyle(
      letterSpacing: 1,
      fontSize: 32,
      color: AppTheme.white,
      fontFamily: 'Cinzel');

  final String text;

  TypewriterText(this.text);

  @override
  Widget build(BuildContext context) {
    return ControlledAnimation(
        duration: Duration(milliseconds: 800),
        delay: Duration(milliseconds: 800),
        tween: IntTween(begin: 0, end: text.length),
        builder: (context, textLength) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text.substring(0, textLength), style: TEXT_STYLE),
              ControlledAnimation(
                playback: Playback.LOOP,
                duration: Duration(milliseconds: 600),
                tween: IntTween(begin: 0, end: 1),
                builder: (context, oneOrZero) {
                  return Opacity(
                      opacity: oneOrZero == 1 ? 1.0 : 0.0,
                      child: Text("_", style: TEXT_STYLE));
                },
              )
            ],
          );
        });
  }
}

class TypewriterBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: "Typewriter Box",
      pathToFile: "typewriter_box.dart",
      delayStartup: true,
      builder: (context) => Center(child: Box()),
    );
  }
}
