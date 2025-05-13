import 'package:bookly_app/core/colors_manager/colors_manager.dart';
import 'package:bookly_app/core/style/Text_styles.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.sizeOf(context).width * 0.4,
            height: MediaQuery.sizeOf(context).height * 0.08,
            decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            child: Text("19.99€", style: TextStyles.textStyle20Black),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.sizeOf(context).width * 0.4,
            height: MediaQuery.sizeOf(context).height * 0.08,
            decoration: BoxDecoration(
              color: ColorsManager.orange,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Text(
              "Free preview",
              style: TextStyles.textStyle16.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
