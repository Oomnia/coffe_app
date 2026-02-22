import 'package:coffe_app/models/drink_model.dart';
import 'package:coffe_app/widgets/quantity.dart';
import 'package:coffe_app/widgets/selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrinkDetails extends StatefulWidget {
  const DrinkDetails({super.key});

  @override
  State<DrinkDetails> createState() => _DrinkDetailsState();
}

class _DrinkDetailsState extends State<DrinkDetails> {
  final PageController controller = PageController();
  int currentIndex = 0;
  double currentPage = 0;
  double drinkSize = 1.1;
  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPage = controller.page ?? 1;
      });
    });
    super.initState();
  }

  final drinks = DrinkModel.drinks;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drinks[currentPage.round()].name,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(drinks[currentPage.round()].title),
                  ],
                ),
                Text(
                  "£${16}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          PageView.builder(
            controller: controller,
            itemCount: drinks.length,
            itemBuilder: (context, index) {
              final scale = drinkSize - (currentPage - index).abs() * 1;
              final translateY = (currentPage - index).abs() * 400;
              return Transform.translate(
                offset: Offset(translateY, 0),
                child: Transform.scale(
                  scale: scale.clamp(0.5, 1.0),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 200,
                        right: 0,
                        left: 0,
                        child: Image.asset('assets/drinks/Ellipse 2.png'),
                      ),
                      Positioned(
                        top: 150,
                        left: 70,
                        child: Image.asset(
                          drinks[index].image,
                          fit: BoxFit.contain,
                          height: 400,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(4, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: currentIndex == index
                            ? Color(0xFFDBDBDB)
                            : Colors.white,
                        child: SvgPicture.asset('assets/Vector.svg'),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      const Selection(),
                      const SizedBox(width: 20),
                      Quantity(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
