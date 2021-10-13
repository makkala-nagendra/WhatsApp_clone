import 'package:flutter/material.dart';

class NewBroadcastScreen extends StatelessWidget {
  const NewBroadcastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("New broadcast"),
            Text(
              "0 of 0 selected",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: ListView.builder(
        itemCount: 1 + 1,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? Column(
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Text(
                            "Only contacts with +91 000000000 in their address book will receive"),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Text("your broadcast messages."),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 10,
                      indent: 10,
                    )
                  ],
                )
              : const ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text("Name"),
                  subtitle: Text("About"),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.check_rounded),
      ),
    );
  }
}
