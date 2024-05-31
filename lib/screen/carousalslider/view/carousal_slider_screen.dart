import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:media_player_regular_task/screen/carousalslider/model/imageList.dart';

import 'package:provider/provider.dart';

import '../provider/slider_provider.dart';

final CarouselController controller = CarouselController();

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Carasoul Slider',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Consumer<SliderProvider>(
          builder: (context, SliderProvider, child) {
            return Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:
                      imgList[SliderProvider.currentPage]['color'].cast<Color>()
                  )),
              child: Column(
                children: [
                  CarouselSlider(
                    items: imgList.map((item) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: Container(
                              height: 530,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(item['img']),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                    carouselController: controller,
                    options: CarouselOptions(
                      aspectRatio: 14/24,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        SliderProvider.changeImage(index);
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness ==
                                Brightness.dark
                                ? Colors.white
                                : Colors.black)
                                .withOpacity(SliderProvider.currentPage == entry.key
                                ? 0.9
                                : 0.4),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
