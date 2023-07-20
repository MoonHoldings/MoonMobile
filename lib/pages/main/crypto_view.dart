import 'package:flutter/material.dart';
import 'package:moonmobile/common/widgets/text/header_text.dart';

class CryptoView extends StatefulWidget {
  const CryptoView({super.key});

  @override
  State<CryptoView> createState() => _CryptoViewState();
}

class _CryptoViewState extends State<CryptoView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeaderText(text: "CRYPTO"),
    );
  }
}
