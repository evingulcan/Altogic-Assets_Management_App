import 'package:assets_management_app/feature/homePage/model/category_model.dart';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CategoryCardModel> _selectedCategories = [];
  List<CategoryCardModel> categories = [
    CategoryCardModel("All", true),
    CategoryCardModel("Computers", false),
    CategoryCardModel("Phones", false),
    CategoryCardModel("Other Devices", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: context.dynamicHeight(0.05),
          ),
          Image.asset('assets/img/kucuklogo.png'),
          SizedBox(
            height: context.dynamicHeight(0.25),
          ),
          SizedBox(
            height: context.height * 0.05,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: context.paddingLow.left),
                  child: InkWell(
                    onTap: () => _selectCategorie(index),
                    child: Container(
                      decoration: BoxDecoration(
                        color: (categories[index].selected)
                            ? Colors.black
                            : Colors.black.withOpacity(0.4),
                        borderRadius: context.lowBorderRadius,
                      ),
                      child: Padding(
                        padding: context.paddingLow.copyWith(
                          right: context.paddingLow.right * 2,
                          left: context.paddingLow.left * 2,
                        ),
                        child: Center(
                          child: Text(
                            categories[index].category,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 14.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _selectCategorie(index) {
    if (_selectedCategories.isNotEmpty) {
      if (categories[index].category == _selectedCategories.first.category) {
        setState(() {
          categories[index].selected = false;
          _selectedCategories.remove(categories[index]);
        });
      }
    } else {
      categories[index].selected = !categories[index].selected;
      setState(() {});
      (categories[index].selected)
          ? _selectedCategories.add(categories[index])
          : _selectedCategories.remove(categories[index]);
      if (_selectedCategories.isEmpty) {
      } else {}
      setState(() {});
    }
  }
}
