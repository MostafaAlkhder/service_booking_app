import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_conditional_builder/animated_conditional_builder.dart';
import 'package:service_booking_app/app_widgets/vendor_item_builder.dart';
import 'package:service_booking_app/app_widgets/service_item_builder.dart';
import 'package:service_booking_app/bloc/cubit.dart';
import 'package:service_booking_app/bloc/states.dart';
import 'package:service_booking_app/gen/assets.gen.dart';
import 'package:service_booking_app/models/services.dart';
import 'package:service_booking_app/models/vendor.dart';
import 'package:service_booking_app/mywidgets/carousel_slider_widget.dart';
import 'package:service_booking_app/mywidgets/circle_image_widget.dart';
import 'package:service_booking_app/mywidgets/horizontal_list_view_separated_widget.dart';
import 'package:service_booking_app/mywidgets/loading_sniper_widget.dart';
import 'package:service_booking_app/styles/colors.dart';

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
                      Container(
                        height: 50,
                        child: Row(
                          children: [
                            circleImageWidget(
                              size: 50.0,
                              borderColor: Colors.blueAccent,
                              borderWidth: 3.0,
                              assetPath: Assets.images.logo.logo.path,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
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
                              Expanded(
                                child: Text(""),
                              ),
                              Text(
                                "View All",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.white,
                            child:
                                horizontalListViewSeparatedWidget<ServiceModel>(
                              items: cubit.services,
                              itemBuilder: (context, service, index) =>
                                  serviceItemBuilderWidget(
                                      context, service, index),
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
                              Expanded(
                                child: Text(""),
                              ),
                              Text(
                                "View All",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.white,
                            child:
                                horizontalListViewSeparatedWidget<VendorModel>(
                              items: cubit.vendors,
                              itemBuilder: (context, vendor, index) =>
                                  VendorItemBuilderWidget(
                                      context, vendor, index),
                              separatorWidth: 20.0,
                              height: 150.0,
                            ),
                          ),
                        ],
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