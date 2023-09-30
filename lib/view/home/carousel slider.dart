import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iconly/iconly.dart';

class CarouselSliderDemo extends StatefulWidget {
  String img1;
  String img2;
  String img3;
  String img4;

  CarouselSliderDemo(
      {super.key,
      required this.img1,
      required this.img2,
      required this.img3,
      required this.img4});

  @override
  _CarouselSliderDemoState createState() => _CarouselSliderDemoState();
}

class _CarouselSliderDemoState extends State<CarouselSliderDemo> {
  //List<bool> isFavoriteList = [false, false, false, false];
  bool isFavorite = false;
  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      widget.img1,
      widget.img2,
      widget.img3,
      widget.img4,
    ];

    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            carouselController: _carouselController,
            items: imageList.map((imageUrl) {
              int index = imageList.indexOf(imageUrl);
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                      child: Stack(
                        children: [
                          Image.asset(
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            right: 3,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                              child: Icon(
                                IconlyBold.bookmark,
                                color: isFavorite
                                    ? const Color.fromRGBO(255, 115, 29, 1)
                                    : const Color.fromARGB(255, 241, 224, 200),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 200.0,
              initialPage: _currentIndex,
              enableInfiniteScroll: false,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          // SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(imageList.length, (int index) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.orange : Colors.grey,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
