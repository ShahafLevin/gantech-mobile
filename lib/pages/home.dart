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
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            const BudgetCard(),
            const SizedBox(height: 20),
            SizedBox(
              height: 70,
              width: 70,
              child: FloatingActionButton(
                onPressed: () {
                  return print("he");
                },
                child: const Icon(
                  Icons.add,
                  size: 25,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "חשבונית חדשה",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      endDrawer: const Sidnav(),
    );
  }
}

class BudgetCard extends StatelessWidget {
  const BudgetCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      width: 320,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context), 
                    icon: const Icon(
                      Icons.reply,
                      size: 35, 
                      color: Colors.white),),
                  const Text(
                    "מידע נוסף",
                    style: TextStyle(color: Colors.white)),
                ],
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "תקציב הגן",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text("₪ 20,000",
                        style: TextStyle(
                          fontSize: 30, 
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                    SizedBox(height: 30),
                    Text("₪ הורים: 10,000",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                    Text("₪ עירייה: 10,000",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
