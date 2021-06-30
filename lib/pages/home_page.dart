import 'package:admin_panel_web_ui/common/app_colors.dart';
import 'package:admin_panel_web_ui/pages/dashboard/dashboard.dart';
import 'package:admin_panel_web_ui/pages/widgets/side_bar_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
        child: Row(
          children: [
            /// Side Navigation Menu
            Expanded(
              child: SideBar(),
            ),

            /// Main Body part
            Expanded(
              flex: 4,
              child: Dashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
