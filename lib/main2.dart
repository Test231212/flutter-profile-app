import 'package:flutter/material.dart';
import 'package:profile_app/theme.dart';

import 'components/profile_buttons.dart';
import 'components/profile_count_info.dart';
import 'components/profile_drawer.dart';
import 'components/profile_header.dart';
import 'components/profile_tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileCountInfo(),
          SizedBox(height: 20),
          ProfileButtons(),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(color: Colors.red),
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.directions_car)),
                      Tab(icon: Icon(Icons.directions_transit)),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: 42,
                          itemBuilder: (context, index) {
                            return Image.network(
                                "https://picsum.photos/id/${index + 1}/200/200");
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Expanded(child: ProfileTab()),

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text("Profile"),
      centerTitle: true,
    );
  }
}
