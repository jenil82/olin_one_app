import 'package:flutter/material.dart';
import 'package:olin_one_app/screen/home/provider/home_provider.dart';
import 'package:olin_one_app/screen/home/view/app_screen.dart';
import 'package:olin_one_app/screen/home/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Homeprovider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => homescreen(),
          'app_screen': (context) => App_screen(),
        },
      ),
    ),
  );
}
