import 'package:fitness_flutter/components/image_card_with_basic_footer1.dart';
import 'package:fitness_flutter/data/Dishes.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/pages/dishes_detail.dart';
import 'package:flutter/material.dart';
import '../data/Dishes.dart';

class TabViewBase extends StatelessWidget {
  final String tabName;

  TabViewBase({@required this.tabName});

  List<Widget> _renderItem(Size size, BuildContext context) {
    return List<Widget>.generate(dishes.length, (index) {
      var tag = dishes[index]['title'] + index.toString();
      Exercise exercise;
      this.tabName == 'Breakfast' ?
        exercise= Exercise(
        image: dishes[index]['image'],
        title: dishes[index]['title'],
        time: dishes[index]['time'],
        difficult: dishes[index]['calories'],
      ): this.tabName == 'Lunch' ?
      exercise= Exercise(
        image: lunch[index]['image'],
        title: lunch[index]['title'],
        time: lunch[index]['time'],
        difficult: lunch[index]['calories'],
      ): this.tabName == 'Dinner' ?
      exercise= Exercise(
        image: dinner[index]['image'],
        title: dinner[index]['title'],
        time: dinner[index]['time'],
        difficult: dinner[index]['calories'],
      ): this.tabName == 'Snacks' ?
      exercise= Exercise(
        image: snack[index]['image'],
        title: snack[index]['title'],
        time: snack[index]['time'],
        difficult: snack[index]['calories'],
      ): null;
      return Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          child: GestureDetector(
            child: ImageCardWithBasicFooter1(
              exercise: exercise,
              tag: tag,
              imageWidth: size.width,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    return DishesDetail(
                      exercise: exercise,
                      tag: tag,
                    );
                  },
                ),
              );
            },
          )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20.0),
        width: size.width,
        color: Colors.white,
        child: Column(
          children: <Widget>[
//            Container(
//              padding: EdgeInsets.all(20.0),
//              decoration: BoxDecoration(
//                color: Color.fromRGBO(219, 228, 255, 1.0),
//                borderRadius: BorderRadius.circular(20.0),
//              ),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Text(
//                    'Track my ' + this.tabName,
//                    style: TextStyle(
//                      fontSize: 16.0,
//                      color: Color.fromRGBO(122, 158, 255, 1.0),
//                    ),
//                  ),
//                  Icon(
//                    Icons.add,
//                    size: 25.0,
//                    color: Color.fromRGBO(122, 158, 255, 1.0),
//                  )
//                ],
//              ),
//            ),
            Column(children: this._renderItem(size, context)),
          ],
        ),
      ),
    );
  }
}