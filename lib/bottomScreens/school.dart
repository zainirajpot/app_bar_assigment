import 'package:flutter/material.dart';

class SchoolWidget extends StatelessWidget {
  const SchoolWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     height: double.infinity,
     width: double.infinity,
     color: Colors.purple,
     child: Center(
       child: Text('school'),
     ),
    );
  }
}