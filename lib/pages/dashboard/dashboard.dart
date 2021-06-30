import 'package:admin_panel_web_ui/common/app_colors.dart';
import 'package:admin_panel_web_ui/pages/dashboard/widegts/header_widget.dart';
import 'package:admin_panel_web_ui/pages/dashboard/widegts/notification_card_widget.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          /// Header Part
          const HeaderWidget(),
          Expanded(
              child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      NotificatioCardWidget(),
                    ],
                  ),
                ),
              ),
              Expanded(child: Container()),
            ],
          ))
        ],
      ),
    );
  }
}
