import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class ProductcardItemWidget extends StatelessWidget {
  const ProductcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.v),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 127.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "10% OFF",
            style: CustomTextStyles.labelMediumPrimaryContainer,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCrm41,
            height: 77.v,
            width: 83.h,
            alignment: Alignment.center,
          ),
          SizedBox(height: 6.v),
          Container(
            width: 91.h,
            margin: EdgeInsets.only(left: 3.h),
            child: Text(
              "Creality CR M4 3D Printer",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium!.copyWith(
                height: 1.20,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                Text(
                  "P75,000",
                  style: CustomTextStyles.labelMediumSemiBold.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "P67,499",
                    style:
                        CustomTextStyles.labelMediumPrimaryContainerExtraBold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
