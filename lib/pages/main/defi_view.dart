import 'package:flutter/material.dart';
import 'package:moonmobile/common/widgets/text/header_text.dart';

class DefiView extends StatefulWidget {
  const DefiView({super.key});

  @override
  State<DefiView> createState() => _DefiViewState();
}

class _DefiViewState extends State<DefiView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeaderText(text: "DEFI"),
    );
  }
}
