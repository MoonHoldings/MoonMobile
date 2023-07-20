import 'package:flutter/material.dart';
import 'package:moonmobile/common/widgets/text/header_text.dart';

class NFTView extends StatefulWidget {
  const NFTView({super.key});

  @override
  State<NFTView> createState() => _NFTViewState();
}

class _NFTViewState extends State<NFTView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeaderText(text: "NFT"),
    );
  }
}
