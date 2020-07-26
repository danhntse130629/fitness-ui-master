import 'package:fitness_flutter/components/next_step.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/pages/activity_timer.dart';
import 'package:flutter/material.dart';
class ActivityDetail extends StatelessWidget {
  final String tag;
  final Exercise exercise;

  ActivityDetail({
    @required this.exercise,
    @required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: this.tag,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    child: Image.asset(
                      this.exercise.image,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        this.exercise.title,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        height: 90.0,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(231, 241, 255, 1.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 30.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Time',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.blueGrey[300]),
                                  ),
                                  Text(
                                    '${this.exercise.time}',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.lightBlue,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30.0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Calories',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.blueGrey[300],
                                    ),
                                  ),
                                  Text(
                                    this.exercise.kCal,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 0.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Intensity',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.blueGrey[300],
                                    ),
                                  ),
                                  Text(
                                    this.exercise.difficult,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      this.exercise.title == 'Chest' ?

                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/chest1.gif',
                              title: 'Barbell bench Press',
                              //seconds: 60,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/chest2.gif',
                              title: 'Barbell incline bench press',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/chest3.gif',
                              title: 'Barbell decline bench press',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/chest4.gif',
                              title: 'Dumbell chest flyes',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                          ],
                        ),
                      ) : this.exercise.title == 'Back' ? 

                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/back1.gif',
                              title: 'Dead lift',
                              //seconds: 60,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/back2.gif',
                              title: 'Dumbell row',
                              //seconds: 50,
                              rep: '3 set x 12 rep (each side)',
                            ),
                            NextStep(
                              image: 'assets/images/back3.gif',
                              title: 'Barbell row',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/back4.gif',
                              title: 'T-bar row',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                          ],
                        ),
                      ) : this.exercise.title == 'Leg' ? 

                       Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/leg1.gif',
                              title: 'Squat',
                              //seconds: 60,
                              rep: '3 set x 10 rep',
                            ),
                            NextStep(
                              image: 'assets/images/leg2.gif',
                              title: 'Romanian deadlifts',
                              //seconds: 50,
                              rep: '3 set x 10 rep',
                            ),
                            NextStep(
                              image: 'assets/images/leg3.gif',
                              title: 'Lunges',
                              //seconds: 50,
                              rep: '3 set x 12 rep (each side)',
                            ),
                            NextStep(
                              image: 'assets/images/leg4.gif',
                              title: 'Lunges',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                          ],
                        ),
                      ) : this.exercise.title == 'Shoulder' ? 
                          
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/shoulder1.gif',
                              title: 'Military Press',
                              //seconds: 60,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/shoulder2.gif',
                              title: 'Dumbell shoulder Press',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/shoulder3.gif',
                              title: 'Lateral Raise',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/shoulder4.gif',
                              title: 'T-bar lateral Press',
                              //seconds: 50,
                              rep: '3 set x 12 rep (each side)',
                            ),
                          ],
                        ),
                      ):  this.exercise.title == 'Easy Start' ? 
                          
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/cardio1.gif',
                              title: 'Jump Squat',
                              //seconds: 60,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio2.gif',
                              title: 'Mountain climbers',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio3.gif',
                              title: 'Burpees',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio5.gif',
                              title: 'Bicycle Crunches',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio6.gif',
                              title: 'Plank',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                          ],
                        ),
                      ): this.exercise.title == 'Medium Start' ? 
                          
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/cardio1.gif',
                              title: 'Jump Squat',
                              //seconds: 60,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio2.gif',
                              title: 'Mountain climbers',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio3.gif',
                              title: 'Burpees',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio5.gif',
                              title: 'Bicycle Crunches',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio6.gif',
                              title: 'Plank',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio7.gif',
                              title: 'Step Ups Each Leg',
                              //seconds: 60,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio8.gif',
                              title: 'Glute Bridges',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio9.gif',
                              title: 'Lunge Jumps',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio10.gif',
                              title: 'Crunches',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio11.gif',
                              title: 'Leg Raises',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                          ],
                        ),
                      ): this.exercise.title == 'Pro Start' ? 
                          
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/cardio1.gif',
                              title: 'Jump Squat',
                              //seconds: 60,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio2.gif',
                              title: 'Mountain climbers',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio3.gif',
                              title: 'Burpees',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio5.gif',
                              title: 'Bicycle Crunches',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio6.gif',
                              title: 'Plank',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio7.gif',
                              title: 'Step Ups Each Leg',
                              //seconds: 60,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio8.gif',
                              title: 'Glute Bridges',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio9.gif',
                              title: 'Lunge Jumps',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio10.gif',
                              title: 'Crunches',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio11.gif',
                              title: 'Leg Raises',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio12.gif',
                              title: 'Russian Twist',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio13.gif',
                              title: 'Side Jack-Knife',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio6.gif',
                              title: 'Plank',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                            NextStep(
                              image: 'assets/images/cardio14.gif',
                              title: 'Jack-knife',
                              //seconds: 50,
                              rep: '45 second on , 15 second rest',
                            ),
                          ],
                        ),
                      ):
                      
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/arm1.gif',
                              title: 'Incline bicep curl',
                              //seconds: 60,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/arm2.gif',
                              title: 'Concentration curl',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/arm3.gif',
                              title: 'Twisting dumbell curl',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/arm4.gif',
                              title: 'Decline close grip skullcrusher',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                            NextStep(
                              image: 'assets/images/arm5.gif',
                              title: 'Tate press',
                              //seconds: 50,
                              rep: '3 set x 12 rep ',
                            ),
                            NextStep(
                              image: 'assets/images/arm6.gif',
                              title: 'Standing overhead extension',
                              //seconds: 50,
                              rep: '3 set x 12 rep',
                            ),
                          ],
                        ),
                      )
                     ,
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
       bottomNavigationBar: GestureDetector(
         child: Container(
           margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
           padding: EdgeInsets.all(15.0),
           decoration: BoxDecoration(
               color: Color.fromRGBO(100, 140, 255, 1.0),
               borderRadius: BorderRadius.circular(15.0),
               boxShadow: [
                 BoxShadow(
                   color: Color.fromRGBO(100, 140, 255, 0.5),
                   blurRadius: 10.0,
                   offset: Offset(0.0, 5.0),
                 ),
               ]),
           child: Text(
             'Start',
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 22.0,
               fontWeight: FontWeight.w900,
               color: Colors.white,
             ),
           ),
         ),
         onTap: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (_) {
               return ActivityTimer();
             }),
           );
         },
       ),
    );
  }
}