import 'package:fitness_flutter/pages/dishes_detail.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/pages/activity_detail.dart';
import 'package:fitness_flutter/components/image_card_with_basic_footer.dart';
import 'package:fitness_flutter/components/section.dart';

class Profile extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/oatmeal.jpg',
      title: 'Oatmeal',
      time: '10 min',
      kCal: 'Breakfast',
      difficult: '200 kCal',
    ),
    Exercise(
      image: 'assets/images/image012.jpg',
      title: 'Salmon',
      time: '25 min',
      kCal: 'Lunch',
      difficult: '426 kCal',
    ),
    Exercise(
      image: 'assets/images/chickenVegetable.jpg',
      title: 'Chicken & stewed vegetables',
      time: '40 min',
      kCal: 'Dinner',
      difficult: '700 kCal',
    ),
    Exercise(
      image: 'assets/images/slicedFruit.jpg',
      title: 'Sliced fruits',
      time: '25 min',
      kCal: 'Snack',
      difficult: '100 kCal',
    )
  ];
  final List<Exercise> exercises2 = [
    Exercise(
      image: 'assets/images/bg-chest1.jpg',
      title: 'Chest',
      time: '15 min',
      kCal: '300 kCal',
      difficult: 'Low',
    ),
    Exercise(
      image: 'assets/images/bg-back.jpg',
      title: 'Back',
      time: '10 min',
      kCal: '500 kCal',
      difficult: 'Medium',
    ),
    Exercise(
      image: 'assets/images/bg-leg.jpg',
      title: 'Leg',
      time: '25 min',
      kCal: '700 kCal',
      difficult: 'High',
    )
  ];
  List<Widget> generateList(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    exercises.forEach((exercise) {
      Widget element = Container(
        margin: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: ImageCardWithBasicFooter(
            exercise: exercise,
            tag: 'imageHeader$count',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return DishesDetail(
                    exercise: exercise,
                    tag: 'imageHeader$count',
                  );
                },
              ),
            );
          },
        ),
      );
      list.add(element);
      count++;
    });
    return list;
  }
  List<Widget> generateList2(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    exercises2.forEach((exercise) {
      Widget element = Container(
        margin: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: ImageCardWithBasicFooter(
            exercise: exercise,
            tag: 'imageHeader2$count',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return ActivityDetail(
                    exercise: exercise,
                    tag: 'imageHeader2$count',
                  );
                },
              ),
            );
          },
        ),
      );
      list.add(element);
      count++;
    });
    return list;
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final today = DateTime.now();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: <Widget>[
                Positioned(
                  top: 0,
                  height: height * 0.35,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: const Radius.circular(40),
                    ),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(top: 40, left: 32, right: 16, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                            subtitle: Text(
                              "Day 1 of 7",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 26,
                                color: Colors.black,
                              ),
                            ),
                            trailing: ClipOval(child: Image.asset("assets/images/image009.jpg")),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              _RadialProgress(
                                width: width * 0.35,
                                height: width * 0.4,
                                progress: 0.7,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  _IngredientProgress(
                                    ingredient: "Protein",
                                    progress: 0.6,
                                    progressColor: Colors.green,
                                    leftAmount: 472,
                                    width: width * 0.28,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  _IngredientProgress(
                                    ingredient: "Carbs",
                                    progress: 0.35,
                                    progressColor: Colors.red,
                                    leftAmount: 252,
                                    width: width * 0.28,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  _IngredientProgress(
                                    ingredient: "Fat",
                                    progress: 0.47,
                                    progressColor: Colors.yellow,
                                    leftAmount: 361,
                                    width: width * 0.28,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Section(
                  title: 'Today menu',
                  horizontalList: this.generateList(context),
                ),
                Section(
                  title: 'Your next exercise',
                  horizontalList: this.generateList2(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _IngredientProgress extends StatelessWidget {
  final String ingredient;
  final int leftAmount;
  final double progress, width;
  final Color progressColor;

  const _IngredientProgress({Key key, this.ingredient, this.leftAmount, this.progress, this.progressColor, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          ingredient.toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 10,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  height: 10,
                  width: width * progress,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: progressColor,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Text("${leftAmount}g left"),
          ],
        ),
      ],
    );
  }
}

class _RadialProgress extends StatelessWidget {
  final double height, width, progress;

  const _RadialProgress({Key key, this.height, this.width, this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(
        progress: 0.7,
      ),
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "6000",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF200087),
                  ),
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text: "kcal left",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF200087),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RadialPainter extends CustomPainter {
  final double progress;

  _RadialPainter({this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 10
      ..color = Color(0xFF200087)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double relativeProgress = 360 * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: size.width / 2),
      math.radians(-90),
      math.radians(-relativeProgress),
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


