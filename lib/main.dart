import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/page/home_screen.dart';
import 'package:flutter_screenutil/screenutil_init.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    /// This will use the default size, and if you use your own size for example
    /// for the iPhone Pro Max, and you run it on an iPad / Tablet device with a
    /// larger size, it's been confirmed that it won't be responsive because you
    /// add the size statically not based on the size of each device
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sizer',
        theme: ThemeData.light(),
        home: HomeScreen(title: 'Flutter Responsive Screen'),
      ),
    );
  }
}
