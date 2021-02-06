import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Normal', style: TextStyle(fontSize: 14)),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.orange,
            ),
            SizedBox(height: 50),
            Text('Responsive', style: TextStyle(fontSize: 14.sp)),
            Container(
              width: 200.0.w,
              height: 200.0.h,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
