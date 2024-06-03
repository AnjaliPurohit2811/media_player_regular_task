

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_player_regular_task/screen/carousalslider/provider/slider_provider.dart';
import 'package:media_player_regular_task/screen/carousalslider/view/carousal_slider_screen.dart';
import 'package:media_player_regular_task/screen/parallaxEffect/view/parallax_screen.dart';
import 'package:provider/provider.dart';
void main(){
  runApp( ChangeNotifierProvider(
    create: (context) => SliderProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParrallaxEffect(),
    );
  }
}
