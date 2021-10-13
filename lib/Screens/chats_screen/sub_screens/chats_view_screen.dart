import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

import 'view_contact_screen.dart';

class ChatsViewScreen extends StatelessWidget {
  const ChatsViewScreen({Key? key, required this.media}) : super(key: key);
  final bool media;

  @override
  Widget build(BuildContext context) {
    return ChatsView(
      media: media,
    );
  }
}

class ChatsView extends StatefulWidget {
  final bool media;
  const ChatsView({Key? key, required this.media}) : super(key: key);

  @override
  _ChatsViewState createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  late TextEditingController _controller;
  @override
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
            const CircleAvatar(
              child: FlutterLogo(),
            ),
            const SizedBox(
              width: 3,
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 45,
                child: InkWell(
                  onTap: () {},
                  child: const Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      "Name",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
            ),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert_outlined),
            onSelected: (v) {
              if (v == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ViewContactScreen(
                      media: false,
                    ),
                  ),
                );
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: const Text("View contact"),
                value: 1,
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text("Media, links, and docs"),
                value: 2,
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text("Search"),
                value: 3,
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text("Mute notification"),
                value: 4,
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text("Wallpaper"),
                value: 5,
                onTap: () {},
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("More"),
                    Icon(
                      Icons.arrow_right_sharp,
                      color: Colors.black,
                    ),
                  ],
                ),
                value: 2,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      body: SizedBox(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView.builder(
                addAutomaticKeepAlives: true,
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return index % 2 == 0
                      ? const BubbleSpecialOne(
                          text: 'Hi, How are you? ',
                          isSender: false,
                          color: Colors.white,
                          textStyle: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      : const BubbleSpecialOne(
                          text: 'Hi',
                          isSender: true,
                          color: Colors.green,
                          textStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        );
                },
              ),
            ),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.sentiment_satisfied_sharp,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: _controller,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.attach_file_sharp,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.camera_alt,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.green,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
