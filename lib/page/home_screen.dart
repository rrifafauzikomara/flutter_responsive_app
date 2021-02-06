import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/page/detail_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({Key key, this.title}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Normal', style: TextStyle(fontSize: 14)),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 50),
            Text('Responsive', style: TextStyle(fontSize: 14.sp)),
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 14.0.sp),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 20.0.sp),
            ),
            SizedBox(height: 50),
            RaisedButton(
              child: Text('Open Detail'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
