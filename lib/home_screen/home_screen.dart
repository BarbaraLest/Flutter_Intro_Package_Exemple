import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:teste_intro_flutter/custom_widgets/custom_theme_widget_builder.dart';

enum Mode { customTheme }

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
    this.title,
    this.mode,
  }) : super(key: key);

  final String title;

  final Mode mode;

  @override
  _MyHomePageState createState() => _MyHomePageState(
        mode: mode,
      );
}

class _MyHomePageState extends State<MyHomePage> {
  Intro intro;

  _MyHomePageState({
    Mode mode,
  }) {
    if (mode == Mode.customTheme) {
      intro = Intro(
        stepCount: 4,
        widgetBuilder: customThemeWidgetBuilder,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(
        milliseconds: 500,
      ),
      () {
        intro.start(context);
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        // colocar a key e o indice nos widgets de acordo com a ordem de sua preferencia
        key: intro.keys[0],
        child: Icon(
          Icons.play_arrow,
        ),
        onPressed: () {
          intro.start(context);
        },
      ),
    );
  }
}
