import 'package:flutter/material.dart';
import 'package:pos/screen/item_selection_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Welcome to Cotts POS!',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Text(
                  'To begin the purchasing process, press the "New Purchase" button below.',
                  textAlign: TextAlign.center,
                ),
                Expanded(child: Container()),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 60, left: 10, right: 10),
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemSelectionScreen(),
                      ),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text(
                      'New Purchase',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
