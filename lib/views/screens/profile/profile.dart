import 'package:flutter/material.dart';

import '../../../constant/screens.dart';
import '../../../utils/app_bar_widget.dart';
import 'components/profile_list.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const AppBarWidget(heading: 'Profile'),
        sizedHeight10,
        CircleAvatar(
          minRadius: 40,
          backgroundColor: primaryColor,
        ),
        sizedHeight10,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'May Valerie',
              style: primaryTextStyle,
            ),
            sizedHeight10,
            const Text('Edit Profile'),
          ],
        ),
        sizedHeight30,
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Enable Biometric login'),
                sizedHeight10,
                Text('Enable Dark Mode'),
              ],
            ),
          ],
        ),
        sizedHeight20,
        const ProfileListItem(),
      ],
    ));
  }
}
