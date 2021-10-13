import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.help_outline_outlined),
              title: const Text("Help Center"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Contact us"),
              subtitle: const Text("Questions? Need help?"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.insert_drive_file_rounded),
              title: const Text("Terms and Privacy Policy"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text("App info"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
