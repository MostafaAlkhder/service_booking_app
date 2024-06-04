import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_booking_app/bloc/cubit.dart';
import 'package:service_booking_app/bloc/states.dart';
import 'package:service_booking_app/common/widgets/mywidgets/app_bar_widget.dart';
import 'package:service_booking_app/common/widgets/mywidgets/drop_down_widget.dart';
import 'package:service_booking_app/common/widgets/mywidgets/list_tile_widget.dart';
import 'package:service_booking_app/common/widgets/mywidgets/list_view_seperated_widget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (BuildContext context, AppStates state) {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
            appBar: AppBarWidget(title: "Services"),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownWidget<String?>(
                  currentValue: cubit.serviceFilterSelectedValue,
                  items: cubit.servicesFiltersList,
                  displayItem: (item) =>
                      item.toString(), // How to display each item
                  onSelected: (value) {
                    cubit.changeServiceFilterSelectedValue(value);
                  },
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListViewSeparatedWidget(
                        items: cubit.filteredServices,
                        itemBuilder: (context, item) => ListTileWidget(
                            title: item.name,
                            icon: Icons.shopping_cart,
                            subtitle: Text(
                              "${item.price.toString()} \$",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            trailing: Image.asset(item.image))),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
