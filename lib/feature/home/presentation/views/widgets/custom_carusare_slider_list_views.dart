import 'package:bookly_app/feature/home/presentation/views/widgets/carousel_card.dart';
import 'package:flutter/material.dart';

class CustomCarouselSliderListView extends StatefulWidget {
  const CustomCarouselSliderListView({super.key});

  @override
  State<CustomCarouselSliderListView> createState() =>
      _CustomCarouselSliderListViewState();
}

class _CustomCarouselSliderListViewState
    extends State<CustomCarouselSliderListView> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2758620689655172,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //itemCount: s.length,
        itemBuilder: (context, index) {
          return CarouselCard();
        },
      ),
    );
  }
}

/* Container(
          margin: EdgeInsets.only(right: 15),
          width: MediaQuery.sizeOf(context).width * 0.4,
          height: MediaQuery.sizeOf(context).height * 0.2758620689655172,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 15),
          width: MediaQuery.sizeOf(context).width * 0.344,
          height: MediaQuery.sizeOf(context).height * 0.2389162561576355,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
          ),
        ),*/
