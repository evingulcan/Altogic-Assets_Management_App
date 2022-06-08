import 'package:assets_management_app/core/app_colors.dart';
import 'package:assets_management_app/feature/homePage/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:kartal/kartal.dart';

class BottomNavbar extends StatefulWidget {
  final int pageid;
  const BottomNavbar({Key? key, required this.pageid}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.09,
      padding: EdgeInsets.only(top: context.height / 100),
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          item(
            icon: 'home',
            title: 'Anasayfa',
            pageName: "homePage",
            id: 0,
          ),
          item(
            icon: 'assets',
            title: 'Assets',
            pageName: "assetsPage",
            id: 1,
          ),
          item(
            icon: 'account',
            title: 'Account',
            pageName: "accountPage",
            id: 3,
          ),
        ],
      ),
    );
  }

  Widget item({
    required String title,
    required String icon,
    required String pageName,
    required int id,
  }) {
    return InkWell(
      onTap: () {
        id != 0
            ? Navigator.pushNamedAndRemoveUntil(
                context, "/$pageName", (route) => false)
            : Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
      },
      child: Column(
        children: [
          SvgPicture.asset('assets/navbar_icons/bottom_navbar/$icon.svg',
              height: 25,
              color: widget.pageid == id ? AppColors.liliac : Colors.black),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
