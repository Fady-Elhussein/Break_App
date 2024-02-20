// It contains the image, title, and description below each other in card
import 'package:break_app/core/utils/app_size.dart';
import 'package:break_app/models/model_card.dart';
import 'package:flutter/material.dart';

class CardColumn extends StatelessWidget {
  final CardModel cardModel;
  const CardColumn({
    super.key,
    required this.cardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppHight.h320,
          margin: const EdgeInsets.only(top: AppSize.s10),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s20),
          ),
          child: Image.asset(cardModel.image, fit: BoxFit.cover),
        ),
        const SizedBox(
          height: AppHight.h20,
        ),
        Text(
          cardModel.title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: AppHight.h20,
        ),
        Text(
          cardModel.descripiion,
          style: TextStyle(fontSize: AppSize.s14, color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
