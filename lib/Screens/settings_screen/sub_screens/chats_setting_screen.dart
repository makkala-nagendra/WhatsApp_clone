import 'package:flutter/material.dart';

class ChatsSettingScreen extends StatelessWidget {
  const ChatsSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ChatsSetting();
  }
}

class ChatsSetting extends StatefulWidget {
  const ChatsSetting({Key? key}) : super(key: key);

  @override
  _ChatsSettingState createState() => _ChatsSettingState();
}

class _ChatsSettingState extends State<ChatsSetting> {
  bool value = false;
  bool value2 = true;
  // ignore: prefer_typing_uninitialized_variables
  var selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = -1;
  }

  @override
  void dispose() {
    super.dispose();
    selectedRadio;
    value;
    value2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats"),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment(-1, 0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text("Display"),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.brightness_6_rounded),
                  title: const Text("Theme"),
                  subtitle: const Text("System default"),
                  onTap: () {
                    AlertDialog alert = AlertDialog(
                      title: const Text("Choose theme"),
                      content: SizedBox(
                        height: 170,
                        child: Column(
                          children: [
                            RadioListTile(
                              value: 1,
                              groupValue: selectedRadio,
                              onChanged: (v) {
                                setState(() {
                                  selectedRadio = v;
                                });
                                Navigator.pop(context);
                              },
                              title: const Text("System default"),
                            ),
                            RadioListTile(
                              value: 2,
                              groupValue: selectedRadio,
                              onChanged: (v) {
                                setState(() {
                                  selectedRadio = v;
                                });
                                Navigator.pop(context);
                              },
                              title: const Text("Light"),
                            ),
                            RadioListTile(
                              value: 3,
                              groupValue: selectedRadio,
                              onChanged: (v) {
                                setState(() {
                                  selectedRadio = v;
                                });
                                Navigator.pop(context);
                              },
                              title: const Text("Dark"),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          child: const Text("CANCEL"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: const Text("ok"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.wallpaper),
                  title: const Text("Wallpaper"),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment(-1, 0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text("Chat settings"),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 70),
                  title: const Text("Enter is sent"),
                  subtitle: const Text("Enter key will sent your message"),
                  trailing: Switch(
                    value: value,
                    onChanged: (bool v) {
                      setState(() {
                        value = v;
                      });
                    },
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 70),
                  title: const Text("Media visibility"),
                  subtitle: const Text(
                      "Show newly downloaded media in you phone's gallery"),
                  trailing: Switch(
                    value: value2,
                    onChanged: (bool v) {
                      setState(() {
                        value2 = v;
                      });
                    },
                  ),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.only(left: 70),
                  title: Text("Font Size"),
                  subtitle: Text("Medium"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const ListTile(
                  leading: Icon(Icons.language),
                  title: Text("App Language"),
                  subtitle: Text("Phone's language (English)"),
                ),
                const ListTile(
                  leading: Icon(Icons.cloud_upload),
                  title: Text("Chat backup"),
                ),
                const ListTile(
                  leading: Icon(Icons.history),
                  title: Text("Chat history"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
