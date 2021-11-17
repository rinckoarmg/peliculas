import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  //const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // double screenH = MediaQuery.of(context).size.height;
    // double screenW = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      color: Colors.purple[200],
      child: Swiper(
          itemCount: 10,
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.9,
          itemHeight: size.height * 0.25,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'promo',
                  arguments: 'promo-instance'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                    placeholder: AssetImage('assets/loading.gif'),
                    image: NetworkImage('https://via.placeholder.com/400x250'),
                    fit: BoxFit.cover),
              ),
            );
          }),
    );
  }
}
