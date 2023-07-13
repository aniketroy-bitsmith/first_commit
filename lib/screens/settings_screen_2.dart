import 'package:flutter/material.dart';


import '../data/settings_data.dart';


class SettingsScreen2 extends StatelessWidget {
  const SettingsScreen2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          leading: const Icon(
            IconData(0xe3dc, fontFamily: 'MaterialIcons'),
            color: Colors.grey,
          ),
        ),
        body: ListView.builder(
      itemCount: settings.length,
      itemBuilder: (ctx, index) => ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
        leading: settings[index].icon,
        title: Text(settings[index].title),
        subtitle: Text(settings[index].about),
      )

    )
    );
  }
}

