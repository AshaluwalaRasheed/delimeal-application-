import 'package:flutter/material.dart';

import '../screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String imageUrl;

  CategoryItem(this.id, this.title, this.color, this.imageUrl);

  void selectCategory(BuildContext ctext) {
    Navigator.of(ctext).pushNamed(
      CategoryMealScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  imageUrl,
                  height: 100,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 40,
                  bottom: 35,
                  right: 24,
                  left: 24,

                  child: Container(
                    color: Colors.black38,
                    padding: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 1,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
