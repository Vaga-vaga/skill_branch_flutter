import 'package:FlutterGalleryApp/screens/photo_screen.dart';
import 'package:flutter/material.dart';
import 'package:FlutterGalleryApp/screens/feed_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FullScreenImage(
        name: 'Вася пупкин',
        userName: "@vasya_pupkin",
        altDescription: "test test test test test test test test",
        photo: 'http://binar.6hi.ru/48.png',
      ),
    );
  }
}
