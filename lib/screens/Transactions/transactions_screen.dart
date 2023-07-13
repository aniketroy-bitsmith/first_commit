import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'Tabs Screens/tcoin_screen.dart';
import 'Tabs Screens/time_screen.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Transactions',
            style: TextStyle(color: Colors.black),
          ),
          leading: const Icon(
            IconData(0xe3dc, fontFamily: 'MaterialIcons'),
            color: Colors.grey,
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Badge(
                label: const Text(
                  "3",
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(
                MdiIcons.bellOutline,
                color: Colors.grey.shade700,
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4,
            tabs: [
              Tab(
                child: Text(
                  'TCOINS',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Tab(
                  child: Text(
                    'TIME',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const TCoinsScreen(),
            TimeScreen(),
          ],
        ),
      ),
    );
  }
}
