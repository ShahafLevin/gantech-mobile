import 'package:flutter/material.dart';
import 'package:gantech_mobile/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 150, 40, 0),
        // pad 100 pixels from the top
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'שם משתמש',
                hintTextDirection: TextDirection.rtl,
              ),
              textAlign: TextAlign.right,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'סיסמה',
                textD: TextDirection.rtl,
              ),
              textDirection: TextDirection.rtl,
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text('כניסה'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
