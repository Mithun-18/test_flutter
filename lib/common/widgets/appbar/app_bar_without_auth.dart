import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class AppBarWithOutAuth extends StatelessWidget implements PreferredSizeWidget {
  final double appbarHeight = 80.0;

  const AppBarWithOutAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.white,
      flexibleSpace: SizedBox(
        height: appbarHeight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              _renderLeading(context),
              const SizedBox(width: 40),
              _renderTitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderLeading(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: AppColors.white, // Set a background color if needed
          borderRadius:
              BorderRadius.circular(12.0), // Optional: add border radius
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(211, 209, 216, 0.3),
              offset: Offset(0, 2),
              blurRadius: 4,
              spreadRadius: 1,
            )
          ],
        ),
        child: const Icon(Icons.arrow_back_ios_rounded, size: 16.0),
      ),
    );
  }

  Widget _renderTitle() {
    return Image.asset(
      "assets/logo.png",
      width: 180.0,
      height: 56.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbarHeight);
}
