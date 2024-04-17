import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController edittextController = TextEditingController();

  bool termsAndConditionsSection = false;

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
              _buildColumnarrowone(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 33.h),
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: emailController,
                    ),
                    SizedBox(height: 13.v),
                    _buildPasswordSection(context),
                    SizedBox(height: 14.v),
                    _buildRetypePasswordSection(context),
                    SizedBox(height: 22.v),
                    _buildTermsAndConditionsSection(context),
                    SizedBox(height: 38.v),
                    CustomElevatedButton(
                      text: "Signup",
                      margin: EdgeInsets.only(
                        left: 11.h,
                        right: 13.h,
                      ),
                      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary,
                      onPressed: () {
                        onTapSignup(context);
                      },
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
  Widget _buildUserNameSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 34.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "Name",
              style: theme.textTheme.bodySmall,
            ),
          ),
          CustomTextFormField(
            controller: nameController,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnarrowone(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL160,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 42.v),
          CustomAppBar(
            leadingWidth: 34.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.only(
                left: 33.h,
                top: 10.v,
                bottom: 8.v,
              ),
            ),
            title: AppbarTitle(
              text: "Back",
              margin: EdgeInsets.only(left: 12.h),
            ),
          ),
          SizedBox(height: 34.v),
          CustomImageView(
            imagePath: ImageConstant.imgLogo3,
            height: 121.v,
            width: 311.h,
          ),
          SizedBox(height: 30.v),
          _buildUserNameSection(context),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 37.h),
              child: Text(
                "Email",
                style: theme.textTheme.bodySmall,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Password",
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(
              controller: passwordController,
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRetypePasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Retype Password",
              style: theme.textTheme.bodySmall,
            ),
          ),
          CustomTextFormField(
            controller: edittextController,
            textInputAction: TextInputAction.done,
            obscureText: true,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTermsAndConditionsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      child: CustomCheckboxButton(
        text: "I agree to the Terms and Conditions provided.",
        value: termsAndConditionsSection,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        onChange: (value) {
          termsAndConditionsSection = value;
        },
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
