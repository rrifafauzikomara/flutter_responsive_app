import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/page/home_screen.dart';
import 'package:flutter_screenutil/screenutil_init.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var screenWidth = WidgetsBinding.instance.window.physicalSize.width;
  var screenHeight = WidgetsBinding.instance.window.physicalSize.height;
  print('Physical Size Width --> $screenWidth');
  print('Physical Size Height --> $screenHeight');

  var width;
  var height;

  if (screenWidth <= 900) {
    width = screenWidth / 1.5;
    height = screenHeight / 1.5;
    print('Phone with Width < 900 (Small Phone)');
  } else if (screenWidth >= 901 && screenWidth <= 1200) {
    width = screenWidth / 3;
    height = screenHeight / 3;
    print('Phone with Width > 901 s/d 1200 (Normal Phone)');
  } else if (screenWidth >= 1201 && screenWidth <= 1500) {
    width = screenWidth / 3.5;
    height = screenHeight / 3.5;
    print('Phone with Width > 1201 s/d 1500 (Medium Phone)');
  } else {
    width = screenWidth / 4;
    height = screenHeight / 4;
    print('Phone with Width > 1501 (Tablet / iPad)');
  }

  print('Result Width --> $width');
  print('Result Height --> $height');
  runApp(MyApp(width: width, height: height));
}

class MyApp extends StatelessWidget {
  final double width;
  final double height;

  MyApp({@required this.width, @required this.height});

  @override
  Widget build(BuildContext context) {
    /// This will responsive because you add the size based on the size of each device
    return ScreenUtilInit(
      designSize: Size(width, height),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Responsive App',
        theme: ThemeData.light(),
        home: HomeScreen(title: 'Flutter Responsive App'),
      ),
    );
  }
}
