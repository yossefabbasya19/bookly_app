import 'package:bookly_app/core/assets_maneger/assets_maneger.dart';
import 'package:bookly_app/core/style/Text_styles.dart';
import 'package:bookly_app/feature/home/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BookDetailsView()),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              fit: BoxFit.fill,
              image: AssetImage(AssetsManager.bookImage2),
              width: MediaQuery.sizeOf(context).width * 0.2,
              height: MediaQuery.sizeOf(context).height * 0.1293103448275862,
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      "Harry Potterand the Goblet of Fire",
                      style: TextStyles.textStyle20,
                    ),
                  ),
                  Text("J.K. Rowling", style: TextStyles.textStyle14),
                  Row(
                    children: [
                      Text("19.99 €", style: TextStyles.textStyle20),
                      Spacer(),
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 5),
                      Text("4.8", style: TextStyles.textStyle16),
                      SizedBox(width: 5),
                      Text("(2390)", style: TextStyles.textStyle16),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
