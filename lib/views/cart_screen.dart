import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/controllers/cart_controller.dart';
import 'package:flutter_task/envirmoent.dart';
import 'package:flutter_task/utils/app_dimensions.dart';
import 'package:flutter_task/utils/custom_widgets/custom_app_bar.dart';
import 'package:flutter_task/utils/theme_provider.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (controller) {
        return SafeArea(
            child: Padding(
          padding: AppDimensions.mSymetricPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              SizedBox(height: 30.h),
              Text(
                'Cart',
                style: ThemeProvider.headTitle1,
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 0.73.sh,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: 60.h,
                          width: 60.h,
                          decoration: BoxDecoration(
                            color: ThemeProvider.appColorsList[index],
                            borderRadius: AppDimensions.borderRadius,
                          ),
                        ),
                        SizedBox(width: 40.w),
                        SizedBox(
                          height: 60.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('${controller.cart[index].name}'),
                              Text(
                                '${controller.cart[index].value}',
                                style: ThemeProvider.hintTextStyle,
                              ),
                              Text(
                                '${Envirmoent.countrySymbolMoney} ${controller.cart[index].price}',
                                style: TextStyle(color: ThemeProvider.appColor),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 0.28.sw,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    controller.dec(index);
                                  },
                                  child: buildButtonCart(Icons.remove)),
                              Text(
                                '${controller.cartList[index].quantatiy}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    controller.inc(index);
                                  },
                                  child: buildButtonCart(Icons.add)),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20.h);
                  },
                  itemCount: controller.cartLen,
                ),
              ),
            ],
          ),
        ));
      },
    );
  }

  Container buildButtonCart(IconData iconData) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: HexColor('#b0eafd'),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Icon(
        iconData,
        color: HexColor('#47b6da'),
      ),
    );
  }
}
