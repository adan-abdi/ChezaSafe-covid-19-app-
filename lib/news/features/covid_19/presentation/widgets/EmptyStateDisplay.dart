import 'package:flutter/material.dart';

class EmptyStateDisplay extends StatelessWidget {
  final String message;

  const EmptyStateDisplay({Key key, @required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      height: (MediaQuery.of(context).size.height) / 8,
      child: Center(
        child: SingleChildScrollView(
          child: Text(
            this.message,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
