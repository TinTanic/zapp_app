import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class SliderviewItemWidget extends StatelessWidget {
  const SliderviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 113.v,
        width: 306.h,
        margin: EdgeInsets.only(bottom: 10.v),
        decoration: BoxDecoration(
          color: appTheme.blueGray100,
          borderRadius: BorderRadius.circular(
            18.h,
          ),
        ),
      ),
    );
  }
}
