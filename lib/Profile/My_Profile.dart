import 'package:calne_heatlh_care1/Profile/Personal.dart';
import 'package:flutter/material.dart';

import 'Medical.dart';

class My_Profile extends StatefulWidget {
  @override
  _My_ProfileState createState() => _My_ProfileState();
}

class _My_ProfileState extends State<My_Profile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _navigateToTab(int index) {
    setState(() {
      _currentIndex = index;
      _tabController.animateTo(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 30,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(
                        context
                      );
                     },
                    iconSize: 24,
                  ),
                ),
                const Text(
                  "My Profile",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                  width: 30,
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          DefaultTabController(
            length: 2,
            child: Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: SizedBox(
                      height: 50,
                      child: Stack(
                        children: [
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffEEEEEE),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          TabBar(
                            padding: EdgeInsets.zero,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorPadding: EdgeInsets.zero,
                            labelPadding: EdgeInsets.zero,
                            indicatorWeight: 4,
                            indicator: BoxDecoration(),
                            controller: _tabController,
                            onTap: (index) {
                              _navigateToTab(index);
                            },
                            tabs: [
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Tab(
                                  child: Container(
                                    height: 35,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: _currentIndex == 0 ? Colors.blue : Colors.transparent,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        _navigateToTab(0);
                                      },
                                      child: Text(
                                        'Personal',
                                        style: TextStyle(
                                          color: _currentIndex == 0 ? Colors.white : Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Tab(
                                  child: Container(
                                    width: double.infinity,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: _currentIndex == 1 ? Colors.blue : Colors.transparent,
                                      borderRadius: BorderRadius.circular(8),

                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        _navigateToTab(1);
                                      },
                                      child: Text(
                                        'Medical',
                                        style: TextStyle(
                                          color: _currentIndex == 1 ? Colors.white : Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: [
                        Personal(),
                        Medical(),



                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




