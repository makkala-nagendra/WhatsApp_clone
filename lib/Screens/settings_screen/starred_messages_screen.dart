import 'package:flutter/material.dart';

class StarredMessagesScreen extends StatelessWidget {
  const StarredMessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Starred messages"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 150,
              width: 150,
              child: CircleAvatar(
                  child: Icon(
                Icons.star_rounded,
                size: 75,
              )),
            ),
            SizedBox(height: 35,),
            Text(
              "Tap and hold on any message",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
            Text(
              "in any chat to star it, so you can",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
            Text(
              "Easily find it later.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
