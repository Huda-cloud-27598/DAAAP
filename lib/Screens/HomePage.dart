import 'package:DAAPP/Widgets/RoundedButton.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:DAAPP/Classes/screenHandler.dart';

class HomePage extends StatelessWidget {

  int _currentPageIndex = 0;
  String _currentPage = '/';
  final _pageController = PageController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      Column(
        children: [
          Container(
            height: 400,
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
          Divider(
              height: 5,
              thickness: 5,
              color: Colors
                  .cyanAccent //neon blue, find a way to make a neon blue method
              ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  RoundedButton(
                    onTap: () => print("Button presses"),
                    buttonName: "Comedy",
                    sColor: Colors.yellow,
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  RoundedButton(
                    onTap: () => print("Button presses"),
                    buttonName: "Horror",
                    sColor: Colors.red,
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  RoundedButton(
                    onTap: () => print("Button presses"),
                    buttonName: "Genre",
                    sColor: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  RoundedButton(
                    onTap: () => print("Button presses"),
                    buttonName: "Documentary",
                    sColor: Colors.green,
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  RoundedButton(
                    onTap: () => print("Button presses"),
                    buttonName: "Cooking",
                    sColor: Colors.deepOrangeAccent,
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  RoundedButton(
                    onTap: () => print("Button presses"),
                    buttonName: "Kids",
                    sColor: Colors.purple,
                  ),
                ],
              )
            ],
          )
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
