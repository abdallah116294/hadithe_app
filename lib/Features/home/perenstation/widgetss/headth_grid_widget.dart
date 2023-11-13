import 'package:flutter/material.dart';
import 'package:hadithe/core/utiles/app_string_manager.dart';
import 'package:hadithe/core/utiles/assets_manager.dart';
import 'package:hadithe/core/utiles/colors_manager.dart';

class HeadthGridWidget extends StatelessWidget {
  const HeadthGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(image: AssetImage(AssetsManager.headth))),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 25,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              AppString.headth,
              style: TextStyle(color: ColorManager.textMainColor, fontSize: 18),
            )
            ),
          ),
        ),
      ),
    );
  }
}
