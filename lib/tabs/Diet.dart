import 'package:fitness_flutter/components/Header.dart';
import 'package:fitness_flutter/components/tab_view_base.dart';
import 'package:fitness_flutter/tabs/Results.dart';
import 'package:flutter/material.dart';
import 'package:fitness_flutter/tabs/Programs.dart';

class Diet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: SafeArea(
        child: DefaultTabController(
          length: 7,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              flexibleSpace: Header(
                'This week\'s menu',
              ),
              bottom: TabBar(
                tabs: <Widget>[
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Mo',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Tu',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'We',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Th',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Fr',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Sa',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'Su',
                    ),
                  ),
                ],
                labelColor: Colors.black87,
                unselectedLabelColor: Colors.grey[400],
                indicatorWeight: 4.0,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Color.fromRGBO(215, 225, 255, 1.0),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                TabViewBase(
                  tabName: 'Breakfast',
                ),
                TabViewBase(
                  tabName: 'Lunch',
                ),
                TabViewBase(
                  tabName: 'Dinner',
                ),
                TabViewBase(
                  tabName: 'Snacks',
                ),
                TabViewBase(
                  tabName: 'Lunch',
                ),
                TabViewBase(
                  tabName: 'Dinner',
                ),
                TabViewBase(
                  tabName: 'Snacks',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
