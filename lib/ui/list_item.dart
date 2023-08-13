import 'package:flutter/material.dart';

final Map<int, int> itemCounterMap = {};

class ListItem extends StatefulWidget {
  const ListItem({super.key, required this.index, required this.items});

  final List<String> items;
  final int index;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  int _itemCount = 0;

  @override
  void dispose() {
    itemCounterMap.clear();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _itemCount = itemCounterMap[widget.index] ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.items[widget.index]),
            const Text(
              '\$0.01',
              style: TextStyle(color: Color(0xff6c6c6c)),
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _itemCount != 0
                ? IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () => setState(() {
                      _itemCount--;
                      itemCounterMap[widget.index] = _itemCount; // Update map
                    }),
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
              onPressed: () => setState(
                () {
                  _itemCount++;
                  itemCounterMap[widget.index] = _itemCount; // Update map
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
