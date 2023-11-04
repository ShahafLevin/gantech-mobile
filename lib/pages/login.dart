import 'package:flutter/material.dart';
import 'package:gantech_mobile/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 200, 40, 0),
        // pad 100 pixels from the top
        child: Column(
          children: <Widget>[
            const Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'שם משתמש',
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'סיסמה',
                  hintTextDirection: TextDirection.rtl,
                ),
                textDirection: TextDirection.rtl,
                obscureText: true,
              ),
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
