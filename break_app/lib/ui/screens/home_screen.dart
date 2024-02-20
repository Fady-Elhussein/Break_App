import 'package:break_app/core/utils/app_bar.dart';
import 'package:break_app/core/utils/app_string.dart';
import 'package:break_app/models/model_card.dart';
import 'package:break_app/ui/screens/head_protrudes_forward_screen.dart';
import 'package:break_app/ui/screens/hunch_back_screen.dart';
import 'package:break_app/ui/screens/lumbar_excavation_screen.dart';
import 'package:break_app/ui/screens/rounded_shoulders_screen.dart';
import 'package:break_app/ui/widget/card_column.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int _current = 0;
  dynamic _selectedIndex = {};

  final CarouselController _carouselController = CarouselController();
  final List<CardModel> _cardModel = [
    CardModel(
      image: AppString.cardImage1,
      title: AppString.cardTitle1,
      descripiion: AppString.cardIDescripiion1,
      navigationScreen: const HeadProtrudesForwardScreen(),
    ),
    CardModel(
      image: AppString.cardImage2,
      title: AppString.cardTitle2,
      descripiion: AppString.cardIDescripiion2,
      navigationScreen: const RoundShouldersScreen(),
    ),
    CardModel(
      image: AppString.cardImage3,
      title: AppString.cardTitle3,
      descripiion: AppString.cardIDescripiion3,
      navigationScreen: const HunchBackScreen(),
    ),
    CardModel(
      image: AppString.cardImage4,
      title: AppString.cardTitle4,
      descripiion: AppString.cardIDescripiion4,
      navigationScreen: const LumberExcavationScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
                height: 450.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.70,
                enlargeCenterPage: true,
                pageSnapping: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: _cardModel.map((movie) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_selectedIndex == movie) {
                          _selectedIndex = {};
                        } else {
                          _selectedIndex = movie;
                        }
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                _cardModel[_current].navigationScreen,
                          ));
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: _selectedIndex == movie
                              ? Border.all(
                                  color: Colors.blue.shade500, width: 3)
                              : null,
                          boxShadow: _selectedIndex == movie
                              ? [
                                  BoxShadow(
                                      color: Colors.blue.shade100,
                                      blurRadius: 30,
                                      offset: const Offset(0, 10))
                                ]
                              : [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 20,
                                      offset: const Offset(0, 5))
                                ]),
                      child: SingleChildScrollView(
                        child: CardColumn(
                          cardModel: _cardModel[_current],
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList()),
      ),
    );
  }
}
