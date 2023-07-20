import 'package:flutter/material.dart';
import 'package:moonmobile/common/colors/colors.dart';
import 'package:moonmobile/common/widgets/navbar/bottom_nav_bar.dart';
import 'package:moonmobile/pages/main/crypto_view.dart';
import 'package:moonmobile/pages/main/dashboard_view.dart';
import 'package:moonmobile/pages/main/defi_view.dart';
import 'package:moonmobile/pages/main/nft_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentScreen = 0;
  final screenList = [
    const CryptoView(),
    const DashboardView(),
    const NFTView(),
    const DefiView(),
  ];

  void onTapNavigationBar(int index) {
    setState(() {
      _currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: screenList[_currentScreen],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavBar(
          currentScreen: _currentScreen,
          onTapNavigationBar: onTapNavigationBar,
        ),
      ),
    );
  }
}
