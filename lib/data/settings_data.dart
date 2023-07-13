import 'package:bitsmith_first/models/settings.dart';
import 'package:flutter/material.dart';

List<Settings> settings = [
  const Settings(
    title: 'Account',
    about: 'Edit your information, Name, Email, Mobile, Address etc.',
    icon: Icon(Icons.account_circle),
  ),
  const Settings(
    title: 'Language',
    about: 'Change language of the system',
    icon: Icon(Icons.language_outlined),
  ),
  const Settings(
    title: 'Privacy Policy',
    about: 'How we handle any customer,client or employee information gathered in its operations',
    icon: Icon(Icons.privacy_tip_outlined),
  ),
  const Settings(
    title: 'Terms and Conditions',
    about: 'Document governing the contractual relationship between us and our user',
    icon: Icon(Icons.edit_document),
  ),
  const Settings(
    title: 'Report Problem',
    about: 'Describe the problem encountered by you',
    icon: Icon(Icons.report),
  ),

];
