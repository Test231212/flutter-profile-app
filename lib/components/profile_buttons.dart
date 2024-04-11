import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

  Widget _buildFollowButton() {
    return SizedBox();
  }

  Widget _buildMessageButton() {
    return SizedBox();
  }
}