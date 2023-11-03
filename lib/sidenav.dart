import 'package:flutter/material.dart';
import 'package:gantech_mobile/pages/login.dart';

class Sidnav extends StatelessWidget {
  const Sidnav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(
            height: 125,
            child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text("")),
          ),
          const SizedBox(
            height: 30,
          ),
          ListTile(
            trailing: const Icon(
              Icons.checklist,
              size: 40,
            ),
            title: const Text(
              'נוכחות',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              // Update the state of the app
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          ListTile(
            trailing: const Icon(
              Icons.money,
              size: 40,
            ),
            title: const Text(
              'חשבוניות',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              // Update the state of the app
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 30,
          ), // add logoff button
          ListTile(
            trailing: const Icon(
              Icons.face,
              size: 40,
            ),
            title: const Text(
              'תלמידים',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              // Update the state of the app
              // Then close the drawer
              Navigator.pop(context);
              // Navigate to login page without the possibility to return to home page
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (Route<dynamic> route) => false,
              );
            },
          ),
          const SizedBox(
            height: 30,
          ), // add logoff button
          ListTile(
            trailing: const Icon(
              Icons.logout,
              size: 40,
            ),
            title: const Text(
              'התנתק',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              // Update the state of the app
              // Then close the drawer
              Navigator.pop(context);
              // Navigate to login page without the possibility to return to home page
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
