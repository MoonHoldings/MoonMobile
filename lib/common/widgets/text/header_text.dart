import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moonmobile/common/constants.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final double lineHeight;
  final String fontFamily;
  final int? maxLines;
  final TextAlign textAlign;

  const HeaderText(
      {required this.text,
      Key? key,
      this.fontSize = 30,
      this.color = Colors.black,
      this.fontWeight = FontWeight.w500,
      this.lineHeight = 1.5,
      this.fontFamily = FontConstants.inter,
      this.maxLines = 1,
      this.textAlign = TextAlign.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: maxLines,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: lineHeight,
        ),
      ),
    );
  }
}
