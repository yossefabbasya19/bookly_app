import 'package:bookly_app/core/style/Text_styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/best_seller_card.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/best_seller_list_veiws.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_carusare_slider_list_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    removeSplash();
  }

  removeSplash() async {
    Future.delayed(Duration(seconds: 2), () {
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                CustomCarouselSliderListView(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("Best Seller",style: TextStyles.textStyle18,),
                ),
                SizedBox(height: 15,),
              ],
            ),
          ),
          BestSellerListViews()
        ],
      ),
    );
  }
}
