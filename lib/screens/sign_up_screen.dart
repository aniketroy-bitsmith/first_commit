import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/tcoins1.b2f712b2c7b69f61c896.png'),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Just In Time',
                      style: TextStyle(fontSize: 32,),

                    ),
                  ),
                  const SizedBox(height: 8,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Time is the new currency",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        helperText: 'johngeller@gmail.com',
                        labelText: 'Enter Email ID *',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('Enter Referrer Code'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Login With Mobile'),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      // this removes the default margins present in ElevatedButton
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .transparent, //this helps remove the shadow effect coming from the elevatedButton
                        elevation: 0,
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      
                      onPressed: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                            child: Text('Get OTP')),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(thickness: 2),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(MdiIcons.google),
                      label: const Text('Log In With Google'),
                    ),
                  ),
                  Center(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(MdiIcons.facebook),
                      label: const Text('Log In With Facebook'),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Wrap(
              runSpacing: -20,
              alignment: WrapAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red, // optional
                      decorationThickness: 2, // optional
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red, // optional
                      decorationThickness: 2, // optional
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Cancellation/Refund Policy',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red, // optional
                      decorationThickness: 2, // optional
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'About Us',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red, // optional
                      decorationThickness: 2, // optional
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact Us',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red, // optional
                      decorationThickness: 2, // optional
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Pricing',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red, // optional
                      decorationThickness: 2, // optional
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
