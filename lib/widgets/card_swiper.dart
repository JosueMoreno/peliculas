import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      color: Colors.white,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: MediaQuery.of(context).size.width * 0.66,
        itemHeight: MediaQuery.of(context).size.height * 0.44,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.of(context).pushNamed('details'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: const FadeInImage(
                placeholder: AssetImage('assets/images/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
