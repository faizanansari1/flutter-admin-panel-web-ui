import 'package:admin_panel_web_ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class NotificatioCardWidget extends StatelessWidget {
  const NotificatioCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 16),
                  children: [
                    TextSpan(text: "Good Morning"),
                    TextSpan(
                      text: "Faizan As",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Today you have 9 new Application, \n Aslo you need to hire 2 new UX Designer . 1\n React Native Developer',
                style:
                    TextStyle(fontSize: 14, color: AppColor.black, height: 1.5),
              ),
              SizedBox(height: 10),
              Text(
                "Read More",
                style: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/notification_image.png',
            width: 150,
          )
        ],
      ),
    );
  }
}
