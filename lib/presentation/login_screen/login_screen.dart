import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppBar(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 34.h,
                  vertical: 43.v,
                ),
                child: Column(
                  children: [
                    _buildEmailColumn(context),
                    SizedBox(height: 13.v),
                    _buildPasswordColumn(context),
                    SizedBox(height: 51.v),
                    CustomElevatedButton(
                      text: "Login",
                      margin: EdgeInsets.only(
                        left: 10.h,
                        right: 12.h,
                      ),
                      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary,
                      onPressed: () {
                        onTapLogin(context);
                      },
                    ),
                    SizedBox(height: 31.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account? ",
                            style: CustomTextStyles.bodySmall10_1,
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: theme.textTheme.labelMedium,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 39.v),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL160,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            leadingWidth: 35.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.only(
                left: 34.h,
                top: 10.v,
                bottom: 8.v,
              ),
            ),
            title: AppbarTitle(
              text: "Back",
              margin: EdgeInsets.only(left: 12.h),
            ),
          ),
          SizedBox(height: 52.v),
          CustomImageView(
            imagePath: ImageConstant.imgLogo3,
            height: 121.v,
            width: 311.h,
          ),
          SizedBox(height: 72.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "Email",
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(
              controller: emailController,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "Password",
              style: theme.textTheme.bodySmall,
            ),
          ),
          CustomTextFormField(
            controller: passwordController,
            textInputAction: TextInputAction.done,
            obscureText: true,
          )
        ],
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
