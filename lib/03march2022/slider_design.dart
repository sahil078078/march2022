import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderDesign extends StatelessWidget {
  const SliderDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Carousel Slider Design'),
        ),
        body: Center(
          child: CarouselSlider.builder(
            itemCount: 15,
            itemBuilder:
                (BuildContext context, int itemindex, int previouspage) {
              return Container(
                color: Colors.amber,
                child: Text(itemindex.toString()),
              );
            },
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(microseconds: 800),
              autoPlayInterval: Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            // items: [1, 2, 3, 4, 5, 6].map((i) {
            //   return Builder(
            //     builder: (BuildContext context) {
            //       return Container(
            //         margin: EdgeInsets.symmetric(horizontal: 5),
            //         padding: EdgeInsets.all(10),
            //         width: double.infinity,
            //         decoration: const BoxDecoration(color: Colors.amber),
            //         child: Text(
            //           'text $i',
            //           style: const TextStyle(fontSize: 20),
            //         ),
            //       );
            //     },
            //   );
            // }).toList(),
          ),
        ),
      ),
    );
  }
}
