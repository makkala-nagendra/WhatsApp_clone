import 'package:flutter/material.dart';

import 'sub_screens/chats_list_item.dart';
import 'sub_screens/chats_view_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CatsView();
  }
}

class CatsView extends StatefulWidget {
  const CatsView({Key? key}) : super(key: key);

  @override
  _CatsViewState createState() => _CatsViewState();
}

class _CatsViewState extends State<CatsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            //Navigat to chart view page
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatsViewScreen(
                    media: true,
                  ),
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatsViewScreen(
                    media: false,
                  ),
                ),
              );
            }
          },
          // custome list item
          child: ChatsListItem(
            isMuted: index % 2 == 0 ? false : true,
            date: '20/9/21',
            name: "name",
            lastChat: "hi",
          ),

          // Use thes to very semple list

          // ListTile(
          //   leading: const CircleAvatar(
          //     child: SizedBox(
          //       height: 40,
          //       width: 40,
          //       child: FlutterLogo(),
          //     ),
          //   ),
          //   title: const Text("name"),
          //   subtitle: const Text("Hi "),
          //   trailing: Column(
          //     children: [
          //       const Text("20/9/21"),
          //       index % 2 == 0
          //           ? const Icon(Icons.notifications_off)
          //           : const Text("")
          //     ],
          //   ),
          // ),
        );
      },
    );
  }
}
