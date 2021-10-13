import 'package:flutter/material.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payments"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment(-1, 0),
              child: Text(
                "History",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Icon(
              Icons.receipt_long,
              size: 70,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "No payment history",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 10,
              color: Colors.transparent.withOpacity(0.1),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment(-1, 0),
              child: Text(
                "Payment methods",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.green[100],
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.privacy_tip),
                  subtitle: Text(
                    "To protect your security, WhatsApp does not store your UPI PIN or full bank account number. Learn more",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.add_circle_outline_sharp),
              title: Text("Add payment method"),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 10,
              color: Colors.transparent.withOpacity(0.1),
            ),
            const ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 150,
        child: Align(
          alignment: const Alignment(1, 1),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.attach_money_outlined,
                  color: Colors.white,
                ),
                Text(
                  "NEW PAYMENT",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
