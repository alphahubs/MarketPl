import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/models/user/profile_data.dart';

import '../../../../constant/screens.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: profileList.length,
        separatorBuilder: (BuildContext context, int index) {
          return sizedHeight15;
        },
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {},
            child: Container(
              height: 75,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: secondaryColor.withOpacity(.04),
              ),
              child: Align(
                alignment: Alignment.center,
                child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        height: 50,
                        width: 50,
                        color: primaryColor.withOpacity(.2),
                        child: Icon(
                          profileListIcon[index],
                          color: secondaryColor.withOpacity(.9),
                        ),
                      ),
                    ),
                    title: Text(profileList[index]),
                    trailing: const Icon(Iconsax.arrow_right)),
              ),
            ),
          );
        },
      ),
    );
  }
}
