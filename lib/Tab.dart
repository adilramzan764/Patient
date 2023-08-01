
import 'package:flutter/material.dart';

import 'Consult_Now.dart';
import 'MainScreen.dart';
import 'Profile_Page.dart';

class MyTab extends StatefulWidget {
  const MyTab({Key? key}) : super(key: key);

  @override
  State<MyTab> createState() => _MyTabState();
}

class _MyTabState extends State<MyTab> with SingleTickerProviderStateMixin {
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
        children: [SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 24,
            ),
              Text('   Consultations',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold)),
    SizedBox(height: 20,width: 20,)
            ],
        ),
          ),
          SizedBox(height: 15,),
          DefaultTabController(
            length: 2,
            child: Expanded(
              child: SizedBox(
                height: 90,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TabBar(
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
                          Tab(
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: _currentIndex == 0
                                    ? Color(0XFF262BC6)
                                    : Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  _navigateToTab(0);
                                },
                                child: Text(
                                  'Paid',
                                  style: TextStyle(
                                    color: _currentIndex == 0
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                color: _currentIndex == 1
                                    ? Color(0XFF262BC6)
                                    : Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  _navigateToTab(1);
                                },
                                child: Text(
                                  'Free',
                                  style: TextStyle(
                                    color: _currentIndex == 1
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    Flexible(
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children:  [
                          Center(
                              child: Column(children: [SizedBox(height: 60,),
                                Image.asset('assets/Group 2682.png'),
                                SizedBox(height: 100,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          fixedSize:  Size(MediaQuery.of(context).size.width , 50),
                                          backgroundColor: const Color(0XFF262BC6),
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)))),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ConsultNow()
                                            )
                                        );
                                      },
                                      child: const Text(
                                        'Consult Now',
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                      )),
                                ),

                              ],)

                          ),

                          Center(
                              child: Column(children: [SizedBox(height: 80,),
                                Image.asset('assets/Group 2683.png'),
                                SizedBox(height: 120,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          fixedSize:  Size(MediaQuery.of(context).size.width , 50),
                                          backgroundColor: const Color(0XFF262BC6),
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)))),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ConsultNow()
                                            )
                                        );
                                      },
                                      child: const Text(
                                        'Ask free question',
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                      )),
                                ),

                              ],)

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
