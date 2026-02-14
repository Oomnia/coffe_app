import 'package:coffe_app/models/drink_model.dart';
import 'package:coffe_app/widgets/custom_app_bar.dart';
import 'package:coffe_app/widgets/drink_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: controller,
              physics: BouncingScrollPhysics(),
              itemCount: DrinkModel.drinks.length,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    double offset = 0;
                    if (controller.hasClients) {
                      offset = controller.offset / 100 - index;
                    }
                    offset = offset.clamp(0, 1);
                    return Transform.scale(
                      scale: 1 - (offset * 0.2),
                      child: DrinkItem(
                        image: DrinkModel.drinks[index].image,
                        title: DrinkModel.drinks[index].title,
                        name: DrinkModel.drinks[index].name,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
