import 'package:flutter/material.dart';
import 'package:to_dos/common/assets.dart';
import 'package:to_dos/common/tiles/custom_tiles.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: SafeArea(
          minimum: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: Image.asset(
                          Assets.profile,
                          width: 85,
                        ),
                      ),
                      Text(
                        "Ranjit Thakur",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 35, vertical: 17),
                            child: Text(
                              "10 Task left",
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 35, vertical: 17),
                            child: Text(
                              "10 Task left",
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Text("Settings"),
                CustomTiles(
                  title: "App Settings",
                  leading: Icons.settings,
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Accounts"),
                CustomTiles(
                  title: "Change Account Name",
                  leading: Icons.person_2_outlined,
                ),
                CustomTiles(
                  title: "Change Account password",
                  leading: Icons.key,
                ),
                CustomTiles(
                  title: "Change Account Image",
                  leading: Icons.camera_alt_outlined,
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Uptodo"),
                CustomTiles(
                  title: "About Us",
                  leading: Icons.more_horiz_rounded,
                ),
                CustomTiles(
                  title: "FAQ",
                  leading: Icons.format_quote,
                ),
                CustomTiles(
                  title: "Help & Feedback",
                  leading: Icons.energy_savings_leaf_outlined,
                ),
                CustomTiles(
                  title: "Support US",
                  leading: Icons.support_agent_rounded,
                ),
                CustomTiles(
                  title: "Log Out",
                  leading: Icons.logout_rounded,
                  trailing: Icons.wifi_1_bar,
                  color: Colors.red,
                ),
              ],
            ),
          )),
    );
  }
}
