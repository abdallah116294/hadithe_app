import 'package:flutter/material.dart';
import 'package:hadithe/core/utiles/colors_manager.dart';

class TopicWidget extends StatelessWidget {
  const TopicWidget({super.key, required this.title,required this.onPressed});
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: ColorManager.textMainColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                title,
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
              //Spacer(),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.shade100),
                  onPressed: onPressed,
                  child: Text(
                    "تصفح",
                    style: TextStyle(color: ColorManager.textMainColor),
                  )),
            ],
          ),
        ));
  }
}
