import 'package:flutter/material.dart';

class StatusListItem extends StatelessWidget {
  const StatusListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
            width: 50,
            child: CircleAvatar(
              child: FlutterLogo(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Name"),
                Text("Today, 9:39"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
