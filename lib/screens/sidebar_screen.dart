import 'package:designpluscode/components/sidebar_row.dart';
import 'package:designpluscode/constants.dart';
import 'package:designpluscode/model/sidebar.dart';
import 'package:flutter/material.dart';

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
      decoration: BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(34),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 21,
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Titico", style: kHeadlineLabelStyle),
                    SizedBox(height: 4),
                    Text("License end on 21 Jan, 2021",
                        style: kSearchPlaceholderStyle)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SidebarRow(item: sidebarItems[0]),
            SizedBox(
              height: 32,
            ),
            SidebarRow(item: sidebarItems[1]),
            SizedBox(
              height: 32,
            ),
            SidebarRow(item: sidebarItems[2]),
            SizedBox(
              height: 32,
            ),
            SidebarRow(item: sidebarItems[3]),
            SizedBox(
              height: 32,
            ),
            Spacer(),
            Row(
              children: [
                Image.asset('asset/icons/icon-logout.png', width: 17),
                SizedBox(width: 12),
                Text("Log out", style: kSecondaryCalloutLabelStyle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
