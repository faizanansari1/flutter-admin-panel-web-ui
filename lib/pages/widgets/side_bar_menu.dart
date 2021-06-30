import 'package:admin_panel_web_ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'MATRIX HR',
                style: TextStyle(
                    color: AppColor.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            DrawerListTile(
                icon: 'assets/menu_home.png', press: () {}, title: 'Dashboard'),
            DrawerListTile(
                icon: 'assets/menu_recruitment.png',
                press: () {},
                title: 'Recruitment'),
            // DrawerListTile(
            //     icon: 'assets/onboarding.png',
            //     press: () {},
            //     title: 'Onboarding'),
            // DrawerListTile(
            //     icon: 'assets/report.png', press: () {}, title: 'Reports'),
            DrawerListTile(
                icon: 'assets/menu_calendar.png',
                press: () {},
                title: 'Calendar'),
            DrawerListTile(
                icon: 'assets/menu_settings.png',
                press: () {},
                title: 'Settings'),
            Spacer(),
            Image.asset('assets/sidebar_image.png'),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;
  const DrawerListTile(
      {Key? key, required this.icon, required this.press, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: Image.asset(
        icon,
        color: AppColor.white,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColor.white),
      ),
    );
  }
}
