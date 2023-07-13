import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          leading: const Icon(
            IconData(0xe3dc, fontFamily: 'MaterialIcons'),
            color: Colors.grey,
          ),
        ),
        body: buildSettingsList());
  }
}

SettingsList buildSettingsList() {
  return SettingsList(
    contentPadding: const EdgeInsets.all(16),
    sections: [
      SettingsSection(
        tiles: <SettingsTile>[
          SettingsTile.navigation(
            leading: const Icon(Icons.account_circle),
            title: const Text('Account'),
            value: const Text(
                'Edit your information, Name, Email, Mobile, Address etc.'),
          ),
          SettingsTile.navigation(
            leading: const Icon(Icons.language_outlined),
            title: const Text('Language'),
            value: const Text('Change language of the system'),
          ),
          SettingsTile.navigation(
            leading: const Icon(Icons.privacy_tip_outlined),
            title: const Text('Privacy Policy'),
            value: const Text(
                'How we handle any customer,client or employee information gathered in its operations'),
          ),
          SettingsTile.navigation(
            leading: const Icon(Icons.edit_document),
            title: const Text('Terms and Conditions'),
            value: const Text(
                'Document governing the contractual relationship between us and our user'),
          ),
          SettingsTile.navigation(
            leading: const Icon(Icons.report),
            title: const Text('Report Problem'),
            value: const Text('Describe the problem encountered by you'),
          ),
        ],
      ),
    ],
  );
}

// ListView.builder(
//   itemCount: settings.length,
//   itemBuilder: (ctx, index) => SettingsTile.navigation(
//     leading: settings[index].icon,
//     title: Text(settings[index].title),
//     value: Text(settings[index].about),
//   ),
// ),
