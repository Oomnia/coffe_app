import 'package:coffe_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Quantity extends StatefulWidget {
  const Quantity({super.key});

  @override
  State<Quantity> createState() => _QuantityState();
}

int number = 1;

class _QuantityState extends State<Quantity> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          CustomIconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                if (number > 1) {
                  number--;
                }
              });
            },
          ),
          const SizedBox(width: 10),
           Text(number.toString(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(width: 10),
          CustomIconButton(icon: const Icon(Icons.add), onPressed: () {
            setState(() {
              number++;
            });
          }),
        ],
      ),
    );
  }
}
