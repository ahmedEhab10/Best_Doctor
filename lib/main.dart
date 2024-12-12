import 'package:best_doctor_app/core/routing/app_router.dart';
import 'package:best_doctor_app/core/routing/routes.dart';
import 'package:best_doctor_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  DocApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.genreatorRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
