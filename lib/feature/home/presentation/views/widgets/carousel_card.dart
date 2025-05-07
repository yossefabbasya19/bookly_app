import 'dart:ui';

import 'package:bookly_app/core/assets_maneger/assets_maneger.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 15),
      width: MediaQuery.sizeOf(context).width * 0.344,
      height: MediaQuery.sizeOf(context).height * 0.2758620689655172,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image(
            image: AssetImage(AssetsManager.bookImage),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.1066666666666667,
              height: MediaQuery.sizeOf(context).height * 0.0492610837438424,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: IconButton(
                    style: IconButton.styleFrom(),
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow_rounded, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
