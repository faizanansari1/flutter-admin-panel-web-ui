import 'package:admin_panel_web_ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Dashboard",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              navigationIcon(icon: Icons.search),
              navigationIcon(icon: Icons.send),
              navigationIcon(icon: Icons.notifications_none_rounded),
            ],
          ),
        ],
      ),
    );
  }

  Widget navigationIcon({icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: AppColor.black,
      ),
    );
  }
}
