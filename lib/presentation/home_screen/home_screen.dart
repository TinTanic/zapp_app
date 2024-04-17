import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/home_item_widget.dart';
import 'widgets/productcard_item_widget.dart';
import 'widgets/sliderview_item_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildStackView(context),
              SizedBox(height: 21.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        _buildRowZapDeals(context),
                        _buildProductCard(context),
                        SizedBox(height: 40.v),
                        _buildStack(context),
                        SizedBox(height: 29.v),
                        _buildRowDiscover(context),
                        SizedBox(height: 19.v),
                        _buildHome(context)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackView(BuildContext context) {
    return SizedBox(
      height: 75.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomAppBar(
            height: 72.v,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 3.v),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgApp11,
                    height: 33.v,
                    width: 94.h,
                  ),
                  Spacer(
                    flex: 81,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    margin: EdgeInsets.only(
                      top: 6.v,
                      bottom: 5.v,
                    ),
                  ),
                  Spacer(
                    flex: 18,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCart,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(
                      top: 6.v,
                      right: 11.h,
                      bottom: 6.v,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowZapDeals(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Zap! deals",
            style: theme.textTheme.headlineSmall,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 10.v,
            ),
            child: Text(
              "See More",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrow2,
            height: 2.v,
            width: 1.h,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 15.v,
              bottom: 18.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return SizedBox(
      height: 172.v,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 6.h,
          right: 22.h,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 1.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ProductcardItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
      height: 123.v,
      width: 306.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 123.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return SliderviewItemWidget();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 6.v,
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 1,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 6,
                  activeDotColor: theme.colorScheme.errorContainer,
                  dotColor: theme.colorScheme.errorContainer,
                  dotHeight: 6.v,
                  dotWidth: 6.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowDiscover(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 9.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Discover",
            style: theme.textTheme.headlineSmall,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 6.v,
            ),
            child: Text(
              "See More",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrow2,
            height: 2.v,
            width: 1.h,
            margin: EdgeInsets.only(
              left: 18.h,
              top: 19.v,
              bottom: 14.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 4.h,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 171.v,
          crossAxisCount: 2,
          mainAxisSpacing: 11.h,
          crossAxisSpacing: 11.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return HomeItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(47.h, 16.v, 40.h, 7.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHome,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                  ),
                  Text(
                    "Home",
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 49.h,
                bottom: 1.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomIconButton(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRewind,
                    ),
                  ),
                  Text(
                    "Find",
                    style: CustomTextStyles.bodySmallBluegray100,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 49.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "Shops",
                    style: CustomTextStyles.bodySmallGray100,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 42.h,
                bottom: 1.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                    ),
                  ),
                  Text(
                    "Account",
                    style: CustomTextStyles.bodySmallGray100,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
