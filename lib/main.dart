import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/envirmoent.dart';
import 'package:flutter_task/utils/theme_provider.dart';
import 'package:flutter_task/views/tabs_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: Envirmoent.isDebug,
          title: Envirmoent.appName,
          theme: ThemeData(
            primarySwatch: MaterialColor(ThemeProvider.appColorMaped[50]!.value,
                ThemeProvider.appColorMaped),
          ),
          home: const TabsScreen(),
        );
      },
    );
  }
}
