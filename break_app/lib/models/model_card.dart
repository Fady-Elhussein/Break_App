// ignore_for_file: public_member_api_docs, sort_constructors_first
// model card
import 'package:flutter/material.dart';

class CardModel {
  final String image;
  final String title;
  final String descripiion;
  Widget navigationScreen;

  CardModel({
    required this.image,
    required this.title,
    required this.descripiion,
    required this.navigationScreen,
  });
}
