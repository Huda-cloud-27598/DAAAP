import 'package:DAAPP/Widgets/RoundedButton.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';
import 'package:DAAPP/Classes/screenHandler.dart';

class ResultsPage extends StatelessWidget {
  int _currentPageIndex = 1;
  String _currentPage = 'resultsPage'; //keep index and current page at what is is right now
  var ticks = [7, 14, 21, 28, 35];
  var features = ["AA", "BB", "CC", "DD", "EE", "FF", "GG", "HH"];
  var data = [
    [10, 20, 28, 5, 16, 15, 17, 6],
    [15, 1, 4, 14, 23, 10, 6, 19]
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
            children: [
              Container(
              child:
                Expanded(
                  child : RadarChart(
                      outlineColor: Colors.black,
                      ticks: ticks,
                      features: features,
                      data: data,
                    ),
                  ),
              ),
              Container(
                height: 300,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) => Card(
                      child:
                      Center(child: Text('Dummy Card Text-------------')),
                    ),
                    separatorBuilder: (context, _) => SizedBox(
                      width: 50,
                    ),
                    itemCount: 30),
              ),
      ],
        ),
      bottomNavigationBar: BottomBar(
      selectedIndex: _currentPageIndex,
      onTap: (int index) {
        _currentPage = screenHandler().pageStrFromIndex(index);
        Navigator.pushNamed(context,_currentPage);
        _currentPageIndex = index;
      },
      backgroundColor: Colors.black,
      items: <BottomBarItem>[
        BottomBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          activeColor: Colors.blue,
        ),
        BottomBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Favorites'),
          activeColor: Colors.red,
          darkActiveColor: Colors.red.shade400, // Optional
        ),
        BottomBarItem(
          icon: Icon(Icons.person),
          title: Text('Account'),
          activeColor: Colors.greenAccent.shade700,
          darkActiveColor: Colors.greenAccent.shade400, // Optional
        ),
        BottomBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
          activeColor: Colors.orange,
        ),
      ],
    ),
    );
  }
}