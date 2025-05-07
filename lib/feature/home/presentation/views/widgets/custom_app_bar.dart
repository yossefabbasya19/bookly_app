import 'package:bookly_app/core/assets_maneger/assets_maneger.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Row(
        children: [
          const SizedBox(height: 100),
          Image(
            fit: BoxFit.fill,
            image: const AssetImage(AssetsManager.logo),
            width: MediaQuery.sizeOf(context).width * 0.3,
            height: MediaQuery.sizeOf(context).width * 0.07,
          ),
          const Spacer(),
          GestureDetector(child: const Icon(Icons.search_outlined, size: 28)),
        ],
      ),
    );
  }
}
