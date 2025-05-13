import 'package:bookly_app/core/assets_maneger/assets_maneger.dart';
import 'package:bookly_app/core/colors_manager/colors_manager.dart';
import 'package:bookly_app/core/style/Text_styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_details_widgets/book_details_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_details_widgets/book_price.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BookDetailsAppBar(),
            SizedBox(height: 30),
            Image(image: AssetImage(AssetsManager.bookImage), fit: BoxFit.fill),
            SizedBox(height: 30),
            Text("The Jungle Book", style: TextStyles.textStyle30),
            SizedBox(height: 8),
            Text(
              "Rudyard Kipling",
              style: TextStyles.textStyle18.copyWith(color: Colors.grey),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 5),
                Text("4.8", style: TextStyles.textStyle16),
                SizedBox(width: 5),
                Text("(2390)", style: TextStyles.textStyle16),
              ],
            ),
            SizedBox(height: 15),
            BookPrice(),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image(
                        image: AssetImage(AssetsManager.bookImage3),
                        width: 70,
                        height: 112,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
