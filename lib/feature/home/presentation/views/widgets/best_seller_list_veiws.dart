import 'package:bookly_app/feature/home/presentation/views/widgets/best_seller_card.dart';
import 'package:flutter/material.dart';

class BestSellerListViews extends StatelessWidget {
  const BestSellerListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
      return BestSellerCard();
    },);
  }
}
