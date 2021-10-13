import 'package:flutter/material.dart';

class ViewContactScreen extends StatelessWidget {
  final bool media;
  const ViewContactScreen({Key? key, required this.media}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return ViewContact(
      media: media,
    );
  }
}

class ViewContact extends StatefulWidget {
  final bool media;
  const ViewContact({Key? key, required this.media}) : super(key: key);

  @override
  _ViewContactState createState() => _ViewContactState();
}

class _ViewContactState extends State<ViewContact> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height / 2.3,
              floating: false,
              pinned: true,
              actions: [
                IconButton(
                  onPressed: () {
                    double w = MediaQuery.of(context).size.width;
                    showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(w, 0, 0, 0),
                      items: [
                        PopupMenuItem(
                          value: 1,
                          child: const Text("Share"),
                          onTap: () {},
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: const Text("Edit"),
                          onTap: () {},
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: const Text("View in address book"),
                          onTap: () {},
                        ),
                        PopupMenuItem(
                          value: 4,
                          child: const Text("Verify security code"),
                          onTap: () {},
                        ),
                      ],
                    );
                  },
                  icon: const Icon(Icons.more_vert_rounded),
                ),
              ],
              flexibleSpace: const FlexibleSpaceBar(
                centerTitle: false,
                title: Text(
                  "Name/ Number",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                background: SafeArea(child: Placeholder()),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                thickness: 3,
                color: Colors.transparent.withOpacity(0.1),
              ),
              widget.media == true
                  ? SizedBox(
                      height: 45,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Media, links, and docs"),
                              Text((10).toString() + " >"),
                            ],
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
              widget.media == true
                  ? SizedBox(
                      height: 100,
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return index == 9
                              ? const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 80,
                                    child: Center(
                                      child:
                                          Icon(Icons.arrow_forward_ios_rounded),
                                    ),
                                  ),
                                )
                              : const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 80,
                                    child: Placeholder(
                                      color: Colors.green,
                                    ),
                                  ),
                                );
                        },
                      ),
                    )
                  : const SizedBox(),
              widget.media == true
                  ? Divider(
                      thickness: 10,
                      color: Colors.transparent.withOpacity(0.1),
                    )
                  : const SizedBox(),
              ListTile(
                title: const Text("Mute notifications"),
                trailing: Switch(
                    value: value,
                    onChanged: (v) {
                      setState(() {
                        value = v;
                      });
                    }),
                onTap: () {
                  setState(() {
                    value = !value;
                  });
                },
              ),
              ListTile(
                title: const Text("Custom notifications"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Media visibility"),
                onTap: () {},
              ),
              Divider(
                thickness: 10,
                color: Colors.transparent.withOpacity(0.1),
              ),
              ListTile(
                title: const Text("Disappearing messages"),
                subtitle: const Text("Off"),
                trailing: const Icon(Icons.access_time_filled_sharp),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Encryption"),
                subtitle: const Text(
                    "Messages and calls are end-to-end encrypted. Top to verify."),
                trailing: const Icon(Icons.lock),
                onTap: () {},
              ),
              Divider(
                thickness: 10,
                color: Colors.transparent.withOpacity(0.1),
              ),
              const Align(
                alignment: Alignment(-1, 0),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("About and phone number"),
                ),
              ),
              ListTile(
                title: const Text("Busy"),
                subtitle: const Text("March 1"),
                onTap: () {},
              ),
              const Divider(
                indent: 15.0,
                endIndent: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("+91 000000000"),
                            Text("Busy"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.chat,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.call,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.videocam_rounded,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 10,
                color: Colors.transparent.withOpacity(0.1),
              ),
              ListTile(
                leading: const Icon(Icons.block),
                title: const Text(
                  "Block",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {},
              ),
              Divider(
                thickness: 10,
                color: Colors.transparent.withOpacity(0.1),
              ),
              ListTile(
                leading: const Icon(Icons.thumb_down),
                title: const Text(
                  "Report contact",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {},
              ),
              AspectRatio(
                aspectRatio: 3.5,
                child: Container(
                  color: Colors.transparent.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
