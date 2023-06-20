import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('home'),
            Text('home'),
            Text('home'),
            Text('home'),
            Text('home'),
            Text('home'),
            Text('home'),
            Text('home'),
            Text('home'),
            Text('home'),
          ],
        ),
      ),
    );
  }
}
