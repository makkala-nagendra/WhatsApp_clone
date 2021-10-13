import 'package:flutter/material.dart';

class LinkedDevicesScreen extends StatelessWidget {
  const LinkedDevicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linked devices"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Icon(
              Icons.computer_outlined,
              size: 150,
            ),
            const Text(
              "Use WhatsApp on other",
              style: TextStyle(fontSize: 25),
            ),
            const Text(
              "devices",
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "LINK A DEVICE",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 10,
              color: Colors.transparent.withOpacity(0.1),
            ),
            const ListTile(
              leading: Icon(
                Icons.science_sharp,
                color: Colors.green,
              ),
              title: Text("Multi-device beta"),
              subtitle: Text(
                  "Use up to 4 devices without keeping your phone online. Tap to lern more"),
            ),
            Divider(
              thickness: 10,
              color: Colors.transparent.withOpacity(0.1),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment(-1, 0),
                child: Text(
                  "DEVICE STATUS",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment(-1, 0),
                child: Text(
                  "Tap a device to log out.",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.window_outlined,
                ),
              ),
              title: Text("Windows"),
              subtitle: Text("Last active October 8, 9:33 PM"),
            ),
          ],
        ),
      ),
    );
  }
}
