import 'package:flutter/material.dart';

class DrinkItem extends StatelessWidget {
  const DrinkItem({
    super.key,
    required this.image,
    required this.title,
    required this.name,
  });
  final String image, title, name;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 3,
                vertical: 70,
              ),
              child: Row(),
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: 20,
          bottom: 45,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 70,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 30,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
              Image.asset(image, fit: BoxFit.contain),
            ],
          ),
        ),
        Positioned(
          top: 55,
          bottom: 0,
          right: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(title),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 35,
          bottom: 40,
          child: IconButton(
            style: IconButton.styleFrom(side: BorderSide(color: Colors.black)),
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
          ),
        ),
      ],
    );
  }
}
