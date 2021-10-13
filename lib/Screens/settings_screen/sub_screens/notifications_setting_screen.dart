import 'package:flutter/material.dart';

class NotificationsSettingScreen extends StatelessWidget {
  const NotificationsSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NotificationSetting();
  }
}

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  _NotificationSettingState createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool cTone = true;
  bool priorityNotifi = true;
  bool gPriorityNotifi = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text("Conversation toons"),
              subtitle:
                  const Text("Play sounds for incoming and outgoing messages."),
              trailing: Switch(
                  value: cTone,
                  onChanged: (bool v) {
                    setState(() {
                      cTone = v;
                    });
                  }),
              onTap: () {
                setState(() {
                  cTone = !cTone;
                });
              },
            ),
            const Divider(),
            const Align(
              alignment: Alignment(-1, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Messages",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              title: const Text("Vibrate"),
              subtitle: const Text("Default"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Popup notification"),
              subtitle: const Text("Not available"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Light"),
              subtitle: const Text("White"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Use high priority notification"),
              subtitle: const Text(
                  "Show priviews of notifications at the top of the screen"),
              trailing: Switch(
                  value: priorityNotifi,
                  onChanged: (bool v) {
                    setState(() {
                      priorityNotifi = v;
                    });
                  }),
              onTap: () {
                setState(() {
                  priorityNotifi = !priorityNotifi;
                });
              },
            ),
            const Divider(),
            const Align(
              alignment: Alignment(-1, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Groups",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              title: const Text("Vibrate"),
              subtitle: const Text("Default"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Popup notification"),
              subtitle: const Text("Not available"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Light"),
              subtitle: const Text("White"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Use high priority notification"),
              subtitle: const Text(
                  "Show priviews of notifications at the top of the screen"),
              trailing: Switch(
                  value: gPriorityNotifi,
                  onChanged: (bool v) {
                    setState(() {
                      gPriorityNotifi = v;
                    });
                  }),
              onTap: () {
                setState(() {
                  gPriorityNotifi = !gPriorityNotifi;
                });
              },
            ),
            const Divider(),
            const Align(
              alignment: Alignment(-1, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Calls",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              title: const Text("Ringtoons"),
              subtitle: const Text("Default ringtone"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Vibrate"),
              subtitle: const Text("Default"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
