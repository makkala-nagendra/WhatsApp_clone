import 'package:flutter/material.dart';

class AccountSettingScreen extends StatelessWidget {
  const AccountSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text("Privacy"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.security),
              title: const Text("Security"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.verified),
              title: const Text("Tow-step verification"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.send_to_mobile_rounded),
              title: const Text("Change number"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.insert_drive_file_rounded),
              title: const Text("Request account info"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text("Delete my account"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
