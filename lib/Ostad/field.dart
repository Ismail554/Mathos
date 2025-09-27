import 'package:flutter/material.dart';

class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Input"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              maxLength: 11,
              cursorColor: Colors.red,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter your number.",
                hintStyle: TextStyle(color: Colors.green),
                labelText: "Phone Number",
                labelStyle: TextStyle(color: Colors.blue),
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.numbers),
                helperText: "User Phone Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Colors.orange, width: 1.5),
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(22),
              ),
            ),
            SizedBox(height: 8),
            Column(
              children: [
                TextField(
                  controller: phoneController,
                  maxLength: 8,
                  minLines: 1,
                  cursorColor: Colors.red,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Enter your password.",
                    hintStyle: TextStyle(color: Colors.green),
                    labelText: "User password",
                    labelStyle: TextStyle(color: Colors.blue),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    helperText: "Suggest a strong password?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Colors.orange, width: 1.5),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(22),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  print(phoneController.text);
                  print(passwordController.text);
                  phoneController.clear();
                  passwordController.clear();
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
