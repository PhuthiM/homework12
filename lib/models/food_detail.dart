import 'package:flutter/material.dart';
import 'package:homework12/models/food_item.dart';

class FoodDetail extends StatefulWidget {
  static const routeName = '/food_detail';

  const FoodDetail({Key? key}) : super(key: key);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    final food = ModalRoute.of(context)!.settings.arguments as FoodItem;
    return Scaffold(
      appBar: AppBar(
        title: Text('${food.name}'),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset(
              'assets/images/${food.image}',
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'ชื่อเมนู:${food.name}',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  'ราคา: ${food.price} บาท',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
