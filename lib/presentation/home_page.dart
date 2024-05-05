import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_test/presentation/widgets/parallax_image_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<String> images;

  @override
  void initState() {
    images = [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img5.jpg',
      'assets/images/img6.jpg'
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: CarouselSlider.builder(
            options: CarouselOptions(
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              enlargeFactor: 0.55,
              viewportFraction: 0.7,
            ),
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) {
              return ParallaxImageCard(image: images[index]);
            },
          ),
        ));
  }
}
