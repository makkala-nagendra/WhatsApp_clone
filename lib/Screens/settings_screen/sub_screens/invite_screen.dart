import 'package:flutter/material.dart';

class InviteScrenn extends StatelessWidget {
  const InviteScrenn({Key? key, required this.count}) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invite a friend"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: ListView.builder(
        itemCount: count + 1,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(child: Icon(Icons.share)),
                      title: const Text("Share link"),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment(-1, 0),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("From contacts"),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                )
              : ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: const Text("Name / Number"),
                  subtitle: const Text("+91 000000000"),
                  onTap: () {},
                );
        },
      ),
    );
  }
}
