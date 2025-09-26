import 'package:flutter/material.dart';

class tutorial extends StatelessWidget {
  const tutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(0),
                  bottomLeft: Radius.circular(50),
                ),
                border: Border.all(color: Colors.green, width: 2),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 20)],
              ),
              child: Center(child: Text("Container 1")),
            ),
          ),
          const SizedBox(height: 50),
          RichText(
            text: TextSpan(
              text: "Hello this ",
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: "Rich text",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ), // optional styling
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
