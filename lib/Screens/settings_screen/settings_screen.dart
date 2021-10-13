import 'package:flutter/material.dart';

import 'sub_screens/account_setting_screen.dart';
import 'sub_screens/chats_setting_screen.dart';
import 'sub_screens/help_screen.dart';
import 'sub_screens/invite_screen.dart';
import 'sub_screens/notifications_setting_screen.dart';
import 'sub_screens/storage_data_setting_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 65,
                        width: 65,
                        child: CircleAvatar(
                          child: FlutterLogo(),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Name"),
                                  Text("About"),
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.qr_code,
                                    size: 35,
                                    color: Colors.green,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text("Account"),
              subtitle: const Text("Privacy, security, change number"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AccountSettingScreen(),
                ),
              ),
              onLongPress: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AccountSettingScreen(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.chat),
              title: const Text("Chats"),
              subtitle: const Text("Theme, wallpapers, chat history"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatsSettingScreen(),
                ),
              ),
              onLongPress: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatsSettingScreen(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Notification"),
              subtitle: const Text("Message, group & calls tones"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationsSettingScreen(),
                ),
              ),
              onLongPress: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationsSettingScreen(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.pie_chart_rounded),
              title: const Text("Storage and data"),
              subtitle: const Text("Network usage, auto-dounloads"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StorageDtaSettingScreen(),
                ),
              ),
              onLongPress: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StorageDtaSettingScreen(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.help_outline_outlined),
              title: const Text("Help"),
              subtitle: const Text("Help center, contact us, privacy policy"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HelpScreen(),
                ),
              ),
              onLongPress: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HelpScreen(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.people_sharp),
              title: const Text("Invite a friend"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InviteScrenn(
                    count: 1,
                  ),
                ),
              ),
              onLongPress: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InviteScrenn(
                    count: 1,
                  ),
                ),
              ),
            ),
            const Center(
              child: Text("from"),
            ),
            const Center(
              child: Text("FACEBOOK"),
            ),
          ],
        ),
      ),
    );
  }
}
