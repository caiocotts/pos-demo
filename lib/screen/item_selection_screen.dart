import 'package:flutter/material.dart';

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
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {

                    return _ListItem(index: index);
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

class _ListItem extends StatefulWidget {
  const _ListItem({super.key, required this.index});

  final int index;

  @override
  State<_ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<_ListItem> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(items[widget.index]),
            const Text('\$0.01'),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _itemCount != 0
                ? IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () => setState(() => _itemCount--),
                  )
                : Container(),
            Text(
              _itemCount.toString(),
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
            IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => setState(() => _itemCount++))
          ],
        ),
      ),
    );
  }
}
