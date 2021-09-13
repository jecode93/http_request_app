import 'package:flutter/material.dart';
import 'package:http_request_app/screen/secondTab.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          'Go to Tab 2 to see the data',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
