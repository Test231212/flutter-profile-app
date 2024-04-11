import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        _buildTabBarView(),
      ],
    );
  }

  Widget _buildTabBar() {
    return SizedBox();
  }

  Widget _buildTabBarView() {
    return SizedBox();
  }
}
