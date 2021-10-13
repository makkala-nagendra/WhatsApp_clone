import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/calls_screen/sub_screen/calls_list_item.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CallsView();
  }
}

class CallsView extends StatefulWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  _CallsViewState createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.all(10),
          child: CallsListItem(),
        );
      },
    );
  }
}
