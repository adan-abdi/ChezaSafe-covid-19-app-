import 'package:covid_tracker/guides/screens/protection.dart';
import 'package:covid_tracker/guides/screens/summary.dart';
import 'package:covid_tracker/guides/screens/symptoms.dart';
import 'package:covid_tracker/guides/utils/sidepanel.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: SidePanel(pageController:pageController),
          ),
          Flexible(
            flex: 3,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                children: <Widget>[
                  Summary(),
                  Symptoms(),
                  Protection(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

 
}
