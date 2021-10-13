import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/settings_screen/linked_devices_screen.dart';
import 'package:whatsapp_clone/Screens/settings_screen/new_broadcast_screen.dart';
import 'package:whatsapp_clone/Screens/settings_screen/new_group_screen.dart';
import 'package:whatsapp_clone/Screens/settings_screen/payments_screen.dart';
import 'package:whatsapp_clone/Screens/settings_screen/starred_messages_screen.dart';

import 'calls_screen/calls_screen.dart';
import 'chats_screen/chats_screen.dart';
import 'settings_screen/settings_screen.dart';
import 'status_screen/status_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeScreenTabs();
  }
}

class HomeScreenTabs extends StatefulWidget {
  const HomeScreenTabs({Key? key}) : super(key: key);

  @override
  _HomeScreenTabsState createState() => _HomeScreenTabsState();
}

class _HomeScreenTabsState extends State<HomeScreenTabs>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  final List<Widget> screens = const [
    NewGroupScreen(),
    NewBroadcastScreen(),
    LinkedDevicesScreen(),
    StarredMessagesScreen(),
    PaymentsScreen(),
    SettingsScreen()
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("WhatsApp"),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                        PopupMenuButton(
                          icon: const Icon(Icons.more_vert_outlined),
                          onSelected: (int value) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => screens[value - 1],
                              ),
                            );
                          },
                          itemBuilder: (BuildContext context) => [
                            const PopupMenuItem(
                              child: Text("New group"),
                              value: 1,
                            ),
                            const PopupMenuItem(
                              child: Text("New broadcast"),
                              value: 2,
                            ),
                            const PopupMenuItem(
                              child: Text("Linked devices"),
                              value: 3,
                            ),
                            const PopupMenuItem(
                              child: Text("Starred messages"),
                              value: 4,
                            ),
                            const PopupMenuItem(
                              child: Text("Payments"),
                              value: 5,
                            ),
                            const PopupMenuItem(
                              child: Text("Settings"),
                              value: 6,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: PreferredSize(
                preferredSize:
                    const Size.fromHeight(50.0), // here the desired height
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.white60,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TabBar(
                        tabs: const [
                          Tab(
                            text: "CHATS",
                          ),
                          Tab(
                            text: "STATUS",
                          ),
                          Tab(
                            text: "CALLS",
                          ),
                        ],
                        controller: _tabController,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: const [
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }

  Widget heroProfilePic() {
    return SizedBox(
      height: 250,
      width: 210,
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: 210,
            child: Stack(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: const Icon(Icons.ac_unit), onPressed: () {}),
              IconButton(icon: const Icon(Icons.ac_unit), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
