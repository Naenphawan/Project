import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Slider_Carousel extends StatelessWidget {
  final urlImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReITecwwe_LyBXy63JRfJnx_WWMPDmqwtvQA&usqp=CAU',
    'https://t4.ftcdn.net/jpg/02/05/82/21/360_F_205822145_edQvnT6ED2xkG5TcBsBMXMV2q1RRwDuQ.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
          child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 200,
          viewportFraction: 1,
          autoPlay: true,
          reverse: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
        ),
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];
          return buildImage(urlImage, index);
        },
      )),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
