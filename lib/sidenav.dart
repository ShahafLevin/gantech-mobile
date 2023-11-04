import 'package:flutter/material.dart';
import 'package:gantech_mobile/routes.dart' as routes;

class SidnavItem {
  const SidnavItem(this.title, this.icon, this.route);
  final String title;
  final IconData icon;
  final String route;
}

const sidnavItems = <SidnavItem>[
  SidnavItem('נוכחות', Icons.checklist, '/attendance'),
  SidnavItem('חשבוניות', Icons.money, '/invoices'),
  SidnavItem('תלמידים', Icons.face, '/students'),
  SidnavItem('התנתק', Icons.logout, routes.loginRoute),
];

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
          const NavHeader(),
          // iterate over the sidnavItems and create a ListTile for each
          for (var navItem in sidnavItems)
            ListTile(
              trailing: Icon(
                navItem.icon,
                size: 40,
              ),
              title: Text(
                navItem.title,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pop(context);
                // Navigate to the page
                Navigator.pushNamed(context, navItem.route);
              },
            ),
          const SizedBox(
            height: 30,
          ), 
        ],
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  const NavHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 125,
      child: DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text("")),
    );
  }
}
