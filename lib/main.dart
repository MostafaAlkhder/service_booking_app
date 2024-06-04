import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_booking_app/bloc/bloc_observer.dart';
import 'package:service_booking_app/bloc/cubit.dart';
import 'package:service_booking_app/bloc/states.dart';
import 'package:service_booking_app/common/classes/navigation_helper.dart';
import 'package:service_booking_app/screens/layout_screen.dart';
import 'package:service_booking_app/common/styles/themes.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..loadData(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            navigatorKey: NavigationHelper.navigatorKey,
            title: 'Project Name',
            theme: Themes.mainTheme,
            // darkTheme: Themes.darkTheme,,
            home: Scaffold(body: Layout()),
          );
        },
      ),
    );
  }
}
