import 'package:flutter/material.dart';

class ItemSelectionScreen extends StatelessWidget {
  ItemSelectionScreen({super.key});

  final List<String> items = <String>[
    'B COORS LIGHT',
    'B COORS ORIG',
    'B CREEMORE LG',
    'C ANGRY CIDR',
    'C CUERVO MARG',
    'C JD & COLA',
    'C JD LEMONADE',
    'C SOCIAL ROOTB',
    'C SOCIAL STRAWB',
    'C TWISTED TEA',
    'C VZ ORNGE',
    'L WHITE WINE',
    'L RED WINE',
    'M CUERVO SILV',
    'M JACK DANIELS',
    'M JACK HONEY',
    'M VODKA',
    'N MONS ZERO',
    'N MONSTER OG',
    'N POP',
    'N WATER'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'))
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF414346),
                            borderRadius: BorderRadius.circular(10)),
                        height: 70,
                        // alignment: Alignment.centerLeft,
                        // color: const Color(0xFF5B5E65),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  items[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  '\$0.01',
                                  style: TextStyle(
                                      color: Colors.white30,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
