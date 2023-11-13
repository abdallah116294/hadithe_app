import 'package:flutter/material.dart';

import '../../../../core/utiles/app_string_manager.dart';
import '../../../../core/utiles/assets_manager.dart';
import '../../../../core/utiles/colors_manager.dart';

class AdahnGrideWidget extends StatelessWidget {
  const AdahnGrideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(image: AssetImage(AssetsManager.adahn))),
          child:  Padding(
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
              AppString.adahan,
              style: TextStyle(color: ColorManager.textMainColor, fontSize: 18),
            )
            ),
          ),
        ),
      ),
    );
  }
}