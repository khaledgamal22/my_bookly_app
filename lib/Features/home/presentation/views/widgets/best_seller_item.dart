import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 0.65,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/images/test_image.png'),
                  fit: BoxFit.fill,
                  ),
              ),
            ),
          ),
          Column(
            children: [
              Text('The Jungle Book',style: Styles.textStyle20,),
              Text('Rudyard Kipling'),
              Row(
                children: [
                  Text('19.9'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}