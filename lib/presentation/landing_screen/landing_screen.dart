import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 99.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 47.v),
              Text(
                "Spark your creativity ",
                style: CustomTextStyles.bodyMediumBlack900,
              ),
              SizedBox(height: 64.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogo3,
                height: 121.v,
                width: 311.h,
              ),
              SizedBox(height: 38.v),
              Text(
                "your go-to destination for all things electronic!",
                style: CustomTextStyles.bodySmall10,
              ),
              Spacer(),
              CustomElevatedButton(
                text: "Login",
                margin: EdgeInsets.symmetric(horizontal: 21.h),
                buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary,
                onPressed: () {
                  onTapLogin(context);
                },
              ),
              SizedBox(height: 23.v),
              CustomOutlinedButton(
                text: "Signup",
                margin: EdgeInsets.symmetric(horizontal: 21.h),
                buttonTextStyle: theme.textTheme.bodyMedium!,
                onPressed: () {
                  onTapSignup(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
