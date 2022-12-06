import 'package:flutter/material.dart';
import 'package:force_music_app/pages/home/category_card.dart';

class CategoryBanner extends StatelessWidget {
  const CategoryBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: <Widget>[
          CategoryCard(
              title: 'Hiphop',
              description: "1.4w",
              image: 'assets/images/banner.png',
              onPress: () {
                Navigator.pushNamed(context, '/playlist/detail');
              }),
          CategoryCard(
              title: 'Hiphop',
              description: "1.4w",
              image: 'assets/images/banner.png',
              onPress: () {
                Navigator.pushNamed(context, '/playlist/detail');
              }),
          CategoryCard(
              title: 'Hiphop',
              description: "1.4w",
              image: 'assets/images/banner.png',
              onPress: () {
                Navigator.pushNamed(context, '/playlist/detail');
              }),
        ],
      ),
    );
  }
}
