import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarsuselSliderlist extends StatefulWidget {
  const CarsuselSliderlist({super.key});

  @override
  State<CarsuselSliderlist> createState() => _CarsuselSliderlistState();
}

class _CarsuselSliderlistState extends State<CarsuselSliderlist> {
  List<CarouselSlideritemmodel> items = [
    CarouselSlideritemmodel(
      image: 'assets/images/burger.jpg',
      title: 'Specail offers',
    ),
    CarouselSlideritemmodel(image: 'assets/images/pasta.jpeg', title: 'Newest'),
    CarouselSlideritemmodel(image: 'assets/images/pizza.jpeg', title: 'Offers'),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 250, // ارتفاع السلايدر

        viewportFraction: 0.8, // قد إيه من العنصر باين
        // initialPage: 0,
        enableInfiniteScroll: true, // لف لا نهائي
        reverse: false,

        autoPlay: true,
        autoPlayInterval: Duration(seconds: 4), // between two item  delay
        autoPlayAnimationDuration: Duration(
          milliseconds: 800,
        ), // animation time
        autoPlayCurve: Curves.fastOutSlowIn, // animation shape

        enlargeCenterPage: true, //space between items
        enlargeFactor: 0.25,

        scrollDirection: Axis.horizontal, // افتراضي
        // scrollPhysics: BouncingScrollPhysics(),
      ),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(items[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Text(
                items[index].title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
    );
  }
}

class CarouselSlideritemmodel {
  final String image, title;
  CarouselSlideritemmodel({required this.image, required this.title});
}
