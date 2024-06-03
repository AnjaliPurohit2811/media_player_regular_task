# media_player_regular_task

## 1.Carousal Slider
A carousel slider is like a digital rotating billboard for content. It's a feature often seen on websites or apps where multiple images or pieces of information are displayed one after another in a loop, like a slideshow. Users can usually navigate through the content by clicking or swiping. It's a way to showcase multiple items in a limited space without overwhelming the viewer.

1.  **Add Dependencies** : First, add the carousel_slider package to your pubspec.yaml file.:

    ```yaml
    dependencies:
      flutter:
        sdk: flutter
        carousel_slider: ^4.0.0
    ```
 2. **Import the Package** : Import the carousel_slider package in your Dart file.
    ```
      import 'package:flutter/material.dart';
      import 'package:carousel_slider/carousel_slider.dart';
    ```

  ## Usage :

```dart
CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
)
 ```
## Image and Video
<div align="center">
    <img src="https://github.com/AnjaliPurohit2811/media_player_regular_task/assets/143180602/e8597f40-7e3b-41cf-a067-ffe5aee9365d" height=500px>

</div> 

<div align="center">
  <video src="https://github.com/AnjaliPurohit2811/media_player_regular_task/assets/143180602/2c41f786-d7d6-4afa-8ecb-196107b734a2"></video>
</div>

## 2. ParallaxEffect

In Flutter, the parallax effect means making background images move slower than foreground content when scrolling, creating a cool depth effect. You can do this by adjusting the position of layers as the user scrolls.

 ## Usage :

```dart
import 'package:flutter/material.dart';

class ParallaxWidget extends StatelessWidget {
  final String imageUrl;
  final double offset;

  ParallaxWidget({required this.imageUrl, required this.offset});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(offset, 0),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

 ```

## Video

<div align="center">
  <video src="https://github.com/AnjaliPurohit2811/media_player_regular_task/assets/143180602/d046dfd6-5979-4192-9374-73be048bcd4b"></video>
</div>







