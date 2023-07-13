import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TimeScreen extends StatelessWidget {
  TimeScreen({super.key});
  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (ctx, index) => ListTile(
          contentPadding: const EdgeInsets.all(16),
          leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                MdiIcons.tagOutline,
                color: Colors.white,
              )),
          title: Text(
            'Purchase',
            style: TextStyle(color: Colors.grey.shade700),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'from Ashish to Aniket Shinde',
                style: TextStyle(color: Colors.black87),
              ),
              Text(DateFormat.yMMMMd().format(now))
            ],
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat("hh:mm a").format(now),
                style: const TextStyle(color: Colors.black87),
              ),
              const Text('success')
            ],
          ),
        ),
      ),
    );
  }
}
