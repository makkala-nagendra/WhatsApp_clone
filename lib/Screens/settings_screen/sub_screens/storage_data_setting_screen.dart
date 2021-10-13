import 'package:flutter/material.dart';

class StorageDtaSettingScreen extends StatelessWidget {
  const StorageDtaSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StorageAndData();
  }
}

class StorageAndData extends StatefulWidget {
  const StorageAndData({Key? key}) : super(key: key);

  @override
  _StorageAndDataState createState() => _StorageAndDataState();
}

class _StorageAndDataState extends State<StorageAndData> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Storage and data"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.folder),
              title: const Text("Manage storage"),
              subtitle: const Text("1.3 GB"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.data_saver_off),
              title: const Text("Network usage"),
              subtitle: const Text("1.6 GB sent -4.8 GB received"),
              onTap: () {},
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 75.0),
              title: const Text("Use less data for calls"),
              onTap: () {
                setState(() {
                  value = !value;
                });
              },
              trailing: Switch(
                  value: value,
                  onChanged: (bool v) {
                    setState(() {
                      value = v;
                    });
                  }),
            ),
            const Divider(),
            const Align(
              alignment: Alignment(-1, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Media auto-download",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Align(
              alignment: Alignment(-1, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Voice messages are always automatically downloaded",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 75.0),
              title: const Text("When using mobile data"),
              subtitle: const Text("Photos"),
              onTap: () {},
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 75.0),
              title: const Text("When connected on Wi-Fi"),
              subtitle: const Text("Photos"),
              onTap: () {},
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 75.0),
              title: const Text("When roaming"),
              subtitle: const Text("Photos"),
              onTap: () {},
            ),
            const Divider(),
            const Align(
              alignment: Alignment(-1, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Media Upload quality",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Align(
              alignment: Alignment(-1, 0),
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Choose the quality of media files to be sent",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 75.0),
              title: const Text("Photo upload quality"),
              subtitle: const Text("Auto (recommended)"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
