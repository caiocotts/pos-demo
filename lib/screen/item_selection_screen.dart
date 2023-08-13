import 'package:flutter/material.dart';
import 'package:pos/ui/subtotal_box.dart';

import '../ui/list_item.dart';

final List<String> _items = <String>[
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

class ItemSelectionScreen extends StatelessWidget {
  const ItemSelectionScreen({super.key});

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
              Flexible(
                flex: 5,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: _items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListItem(
                      index: index,
                      items: _items,
                    );
                  },
                ),
              ),
              const SubtotalBox(),
            ],
          ),
        ),
      ),
    );
  }
}
