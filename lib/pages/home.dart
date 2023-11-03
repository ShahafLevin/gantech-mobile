import 'package:flutter/material.dart';
import 'package:gantech_mobile/sidenav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('גן מיכל'),
      ),
      body: const Center(
        heightFactor: 10,
        child: Text(
          '!ברוכים הבאים',
          style: 
          TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
      endDrawer: const Sidnav(),
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          onPressed: () {
            print("Floating Action Button pressed");
          },
          child: const Icon(
            Icons.add,
            size: 30,),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.startFloat, // Add this line
    );
  }
}
