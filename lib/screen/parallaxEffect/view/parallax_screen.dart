import 'package:flutter/material.dart';
import '../model/videolist.dart';
import 'components/video_card.dart';

class ParrallaxEffect extends StatefulWidget {
  const ParrallaxEffect({super.key});

  @override
  State<ParrallaxEffect> createState() => _ParrallaxEffectState();
}

class _ParrallaxEffectState extends State<ParrallaxEffect> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: PageView.builder(
              controller: _pageController,
              itemCount: videoList.length,
              itemBuilder: (context, index) {
                return VideoCard(
                  assetPath: videoList[index],
                  isSelected: _selectedIndex == index,
                );
              },
              onPageChanged: (i) => setState(
                    () => _selectedIndex = i,
              ),
            ),
          ),
        ],
      ),
    );
  }
}