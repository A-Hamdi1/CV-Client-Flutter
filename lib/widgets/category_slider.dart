import 'package:Portfolio/models/category_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CarouselSlider.builder(
        itemCount: categories.length,
        itemBuilder: (context, index, realIndex) => Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(categories[index].imageFileName),
              ),
            ),
          ],
        ),
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          aspectRatio: 1.2,
          viewportFraction: 0.8,
          padEnds: true,
          initialPage: 0,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          disableCenter: true,
        ),
      ),
    );
  }
}
