import 'package:flutter/material.dart';
import 'color_slider.dart';
import 'color_swtich.dart';

void main() {
  runApp(MyApp());

  /// Hide the debug banner on the top right corner
  WidgetsApp.debugAllowBannerOverride = false;
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // Holds the Color value returned from [ColorSlider]
  MaterialColor? colorCode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Image Color Switcher',
        home: Scaffold(
            body: SafeArea(
                child: Column(children: [
                  Expanded(
                      child: ImageColorSwitcher(
                        imagePath: 'assets/bike.png',
                        color: colorCode ?? Colors.red,
                      )),
                  Expanded(
                      child: ColorSlider(
                        onColorSelected: (color) => setState(() => colorCode = color),
                      )),
                ]))));
  }
}