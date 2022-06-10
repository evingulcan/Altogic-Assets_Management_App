import 'package:assets_management_app/products/widgets/container_widget.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    )),
                Image.asset('assets/img/kucuklogo.png'),
                Container(),
              ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.computer),
              label: 'Assets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
        body: DefaultTabController(
          length: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 9.0),
                child: Text(
                  'Randevum Assets',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              ButtonsTabBar(
                radius: 100,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                borderWidth: 1,
                borderColor: Colors.transparent,
                backgroundColor: Colors.deepPurple,
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(color: Colors.white),
                height: 50,
                tabs: const [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Computers",
                  ),
                  Tab(
                    text: "Phones",
                  ),
                  Tab(
                    text: "Other Device",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                          ContainerWidget(
                              name: 'Macbook Air', text: 'Hakan Çelik'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
