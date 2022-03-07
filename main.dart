import "package:flutter/material.dart";
import 'package:get/get.dart';

import './pages/HomePage.dart';

void main()
{
  runApp(app());
}

class app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}