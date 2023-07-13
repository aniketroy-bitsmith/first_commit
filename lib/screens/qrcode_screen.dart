import 'package:bitsmith_first/widgets/referral_text_field.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:bitsmith_first/widgets/copy_button.dart';

class QrCodeScreen extends StatefulWidget {
  const QrCodeScreen({super.key});

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  final String refLink = 'https://en.wikipedia.org/wiki/QR_code';

  final int refCoins = 1;

  final String refCode = '1234567890this-is-a-random-code';

  final TextEditingController _refLinkController = TextEditingController();
  final TextEditingController _refCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _refLinkController.text = refLink;
    _refCodeController.text = refCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Invite Friend',
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          IconData(0xe3dc, fontFamily: 'MaterialIcons'),
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Scan Qr Code', style: TextStyle(fontSize: 16)),
              Center(
                child: QrImageView(
                  padding: const EdgeInsets.all(32),
                  data: refLink,
                  version: QrVersions.auto,
                  size: 300,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Referral Bonus',
                          style: TextStyle(fontSize: 16)),
                      Text('$refCoins TCoins',
                          style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(
                      height: 100,
                      width: 200,
                      child: Image.asset(
                          'assets/images/undraw_Savings_re_eq4w.png'))
                ],
              ),
              const SizedBox(height: 16),
              const Text('Referral Link',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: ReferralTextField(
                    textEditingController: _refLinkController,
                  )),
                  const SizedBox(width: 16),
                  CopyButton(textEditingController: _refLinkController),
                ],
              ),
              const SizedBox(height: 24),
              const Text('OR', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 24),
              const Text('Referral Code',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: ReferralTextField(
                    textEditingController: _refCodeController,
                  )),
                  const SizedBox(width: 16),
                  CopyButton(textEditingController: _refCodeController)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
