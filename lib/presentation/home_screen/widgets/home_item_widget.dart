import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class HomeItemWidget extends StatelessWidget {
  const HomeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.v,
      width: 150.h,
      decoration: BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
