import 'package:fitness_flutter/components/header.dart';
import 'package:fitness_flutter/components/image_card_with_basic_footer.dart';
import 'package:fitness_flutter/components/section.dart';
import 'package:fitness_flutter/components/image_card_with_internal.dart';
import 'package:fitness_flutter/components/user_photo.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/pages/activity_detail.dart';

import 'package:flutter/material.dart';

class Programs extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/cardio-3-bg.jpg',
      title: 'Easy Start',
      time: '5 min',
      kCal: '400 kCal',
      difficult: 'Low',
    ),
    Exercise(
      image: 'assets/images/cardio-bg.jpg',
      title: 'Medium Start',
      time: '10 min',
      kCal: '600 kCal',
      difficult: 'Medium',
    ),
    Exercise(
      image: 'assets/images/cardio-2-bg.jpg',
      title: 'Pro Start',
      time: '15 min',
      kCal: '800 kCal',
      difficult: 'High',
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
    ),
    Exercise(
      image: 'assets/images/bg-shoulder.jpg',
      title: 'Shoulder',
      time: '45 min',
      kCal: '1000 kCal',
      difficult: 'Extreme',
    ),
    Exercise(
      image: 'assets/images/bg-arm.jpg',
      title: 'Arm',
      time: '45 min',
      kCal: '900 kCal',
      difficult: 'Extremee',
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
                  return ActivityDetail(
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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Header(
                  'Fitness',
                  rightSide: UserPhoto(),
                ),
                Section(
                  title: 'Fat burning',
                  horizontalList: this.generateList(context),
                ),
                Section(
                  title: 'Muscle growth',
                  horizontalList: this.generateList2(context),
                ),
//                Section(
//                  title: 'Workout Plan',
//                  horizontalList: <Widget>[
//                    Container(
//                      child: ImageCardWithInternal(
//                        image: 'assets/images/plan3.jpg',
//                        title: '3 days \nWeek',
//                        duration: '',
//                      ),
//                    ),
//
//                    ImageCardWithInternal(
//                      image: 'assets/images/plan4.jpg',
//                      title: 'Core \nWorkout',
//                      duration: '',
//                    ),
//                    ImageCardWithInternal(
//                      image: 'assets/images/image004.jpg',
//                      title: 'Core \nWorkout',
//                      duration: '',
//                    ),
//                  ],
//                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
