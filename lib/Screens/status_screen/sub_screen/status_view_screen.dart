import 'package:flutter/material.dart';

class StatusViewScreen extends StatelessWidget {
  const StatusViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StatusView();
  }
}

class StatusView extends StatefulWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  _StatusViewState createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 50,
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back),
                        ),
                        const CircleAvatar(
                          child: FlutterLogo(),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Name"),
                                Text("date, time"),
                              ],
                            )),
                        PopupMenuButton(
                          icon: const Icon(Icons.more_vert_outlined),
                          itemBuilder: (BuildContext context) => [
                            PopupMenuItem(
                              child: const Text("Mute"),
                              value: 1,
                              onTap: () {},
                            ),
                            PopupMenuItem(
                              child: const Text("View contact"),
                              value: 2,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: const [
                        Icon(Icons.keyboard_arrow_up_outlined),
                        Text("REPLY"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
