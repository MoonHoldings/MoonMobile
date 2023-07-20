import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moonmobile/common/colors/colors.dart';
import 'package:moonmobile/common/constants.dart';

class BottomNavBar extends StatelessWidget {
  final int currentScreen;
  final Function onTapNavigationBar;
  const BottomNavBar(
      {super.key,
      required this.currentScreen,
      required this.onTapNavigationBar});

  _buildBarItem(iconName, label) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          iconName,
          fit: BoxFit.fitHeight,
        ),
        backgroundColor: AppColors.moonblue,
        label: label);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primary,
        selectedItemColor: AppColors.moonblue,
        unselectedItemColor: AppColors.white,
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontFamily: FontConstants.inter),
        unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontFamily: FontConstants.inter),
        enableFeedback: true,
        currentIndex: currentScreen,
        onTap: (index) => onTapNavigationBar(index),
        items: [
          _buildBarItem('assets/svg/crypto.svg', 'Crypto'),
          _buildBarItem('assets/svg/dashboard.svg', 'Dashboard'),
          _buildBarItem('assets/svg/nft.svg', 'NFT'),
          //sharky png for now
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/sharky-white.png',
                height: 25.sp,
                width: 25.sp,
                fit: BoxFit.fitHeight,
              ),
              backgroundColor: AppColors.moonblue,
              label: "Lend"),
        ]);
  }
}
