import 'package:flutter/material.dart';

class SubtotalBox extends StatefulWidget {
  const SubtotalBox({super.key});

  @override
  State<SubtotalBox> createState() => _SubtotalBoxState();
}

class _SubtotalBoxState extends State<SubtotalBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Color(0xff26242b),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  'Subtotal',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: Container()),
              const Padding(
                padding: EdgeInsets.only(right: 15, top: 15),
                child: Text(
                  '\$0.00',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Divider(),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Event Balance',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff6c6c6c),
                  ),
                ),
              ),
              Expanded(child: Container()),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  '\$0.00',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff6c6c6c),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {},
              child: const Text(
                'Next',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
