import 'package:break_app/core/utils/app_bar.dart';
import 'package:flutter/material.dart';

class HunchBackScreen extends StatelessWidget {
  const HunchBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBarWidget(),
    );
  }
}
