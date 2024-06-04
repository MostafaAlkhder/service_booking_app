import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_conditional_builder/animated_conditional_builder.dart';
import 'package:service_booking_app/common/classes/navigation_helper.dart';
import 'package:service_booking_app/screens/services_screen.dart';
import 'package:service_booking_app/common/widgets/app_widgets/vendor_item_builder.dart';
import 'package:service_booking_app/common/widgets/app_widgets/service_item_builder.dart';
import 'package:service_booking_app/bloc/cubit.dart';
import 'package:service_booking_app/bloc/states.dart';
import 'package:service_booking_app/gen/assets.gen.dart';
import 'package:service_booking_app/models/services.dart';
import 'package:service_booking_app/models/vendor.dart';
import 'package:service_booking_app/common/widgets/mywidgets/carousel_slider_widget.dart';
import 'package:service_booking_app/common/widgets/mywidgets/circle_image_widget.dart';
import 'package:service_booking_app/common/widgets/mywidgets/horizontal_list_view_separated_widget.dart';
import 'package:service_booking_app/common/widgets/mywidgets/loading_sniper_widget.dart';
import 'package:service_booking_app/common/styles/colors.dart';
import 'package:service_booking_app/common/widgets/mywidgets/text_button_widget.dart';
import 'package:service_booking_app/screens/vendors_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (BuildContext context, AppStates state) {
        AppCubit cubit = AppCubit.get(context);

        return AnimatedConditionalBuilder(
          condition: cubit.isLoading == false,
          builder: (BuildContext context) {
            return Scaffold(
              backgroundColor: backgroundColor,
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          circleImageWidget(
                            size: 50.0,
                            borderColor: Colors.blueAccent,
                            borderWidth: 3.0,
                            assetPath: Assets.images.logo.logo.path,
                          ),
                        ],
                      ),
                      createCustomCarouselSliderWidget(
                          context, cubit.carouselSliderImageList),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Popular Services",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          TextButtonWidget(
                              text: "View All",
                              onPressed: () =>
                                  NavigationHelper.push(ServicesScreen()),
                              fontSize: 16,
                              textColor: Colors.blue)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        child: horizontalListViewSeparatedWidget<ServiceModel>(
                          items: cubit.services,
                          itemBuilder: (context, service, index) =>
                              serviceItemBuilderWidget(context, service, index),
                          separatorWidth: 20.0,
                          height: 150.0,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Near By Story",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          TextButtonWidget(
                              text: "View All",
                              onPressed: () =>
                                  NavigationHelper.push(VendorsScreen()),
                              fontSize: 16,
                              textColor: Colors.blue)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      horizontalListViewSeparatedWidget<VendorModel>(
                        items: cubit.vendors,
                        itemBuilder: (context, vendor, index) =>
                            VendorItemBuilderWidget(
                                name: vendor.name,
                                imagePath: vendor.image,
                                category: vendor.category,
                                rating: vendor.reviews[0].rating,
                                onTap: () {}),
                        separatorWidth: 20.0,
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          fallback: (BuildContext context) {
            return loadingSpinnerWidget();
          },
        );
      },
    );
  }
}
