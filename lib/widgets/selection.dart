import 'package:flutter/material.dart';

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

bool isIced = false;

class _SelectionState extends State<Selection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFDBDBDB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          toggleSelection('Hot', !isIced),
          toggleSelection('Iced', isIced),
        ],
      ),
    );
  }

  Widget toggleSelection(label, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isIced = label == 'Iced';
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: selected ? Colors.white : Color(0xFFDBDBDB),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
          child: Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
