import 'package:flutter/material.dart';

import 'sub_screen/status_list_item.dart';
import 'sub_screen/status_view_screen.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

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
    return ListView.builder(
      itemCount: 1 + 1,
      itemBuilder: (BuildContext context, int index) {
        return index == 0
            ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Stack(
                              children: [
                                const SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: CircleAvatar(
                                    child: FlutterLogo(),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: const Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("My status"),
                                Text("Tap to add status update"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text("Viewed updates"),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StatusViewScreen()),
                      );
                    },
                    child: const StatusListItem()),
              );
      },
    );
  }
}
