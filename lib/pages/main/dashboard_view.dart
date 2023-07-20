import 'package:flutter/material.dart';
import 'package:moonmobile/common/widgets/text/header_text.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeaderText(text: "DASHBOARD"),
    );
  }
}
