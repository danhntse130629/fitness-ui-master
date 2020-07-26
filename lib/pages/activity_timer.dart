//import 'dart:math' as math;
//
//import 'package:flutter/material.dart';
//
//class CountDownTimer extends StatefulWidget {
//  @override
//  _CountDownTimerState createState() => _CountDownTimerState();
//}
//
//class _CountDownTimerState extends State<CountDownTimer>
//    with TickerProviderStateMixin {
//  var flag = 0;
//
//  AnimationController controller;
//
//  String get timerString {
//    Duration duration = controller.duration * controller.value;
//    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    controller = AnimationController(
//      vsync: this,
//      duration: Duration(seconds: 900),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    ThemeData themeData = Theme.of(context);
//    return Scaffold(
//      backgroundColor: Colors.white10,
//      body: AnimatedBuilder(
//          animation: controller,
//          builder: (context, child) {
//            return Stack(
//              children: <Widget>[
//                Align(
//                  alignment: Alignment.bottomCenter,
//                  child:
//                  Container(
//                    color: Colors.amber,
//                    height:
//                    controller.value * MediaQuery.of(context).size.height,
//                  ),
//                ),
//                Padding(
//                  padding: EdgeInsets.all(8.0),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      SizedBox(height: 250,),
//                      Row(
//                        children: <Widget>[
//                          Expanded(
//                            child: Align(
//                              alignment: FractionalOffset.center,
//                              child: AspectRatio(
//                                aspectRatio: 1.0,
//                                child: Stack(
//                                  children: <Widget>[
//                                    Positioned.fill(
//                                      child: CustomPaint(
//                                          painter: CustomTimerPainter(
//                                            animation: controller,
//                                            backgroundColor: Colors.white,
//                                            color: themeData.indicatorColor,
//                                          )),
//                                    ),
//                                    Align(
//                                      alignment: FractionalOffset.center,
//                                      child: Column(
//                                        mainAxisAlignment:
//                                        MainAxisAlignment.spaceEvenly,
//                                        crossAxisAlignment:
//                                        CrossAxisAlignment.center,
//                                        children: <Widget>[
//                                          Text(
//                                            "Chest",
//                                            style: TextStyle(
//                                                fontSize: 20.0,
//                                                color: Colors.white),
//                                          ),
//                                          Text(
//                                            timerString,
//                                            style: TextStyle(
//                                                fontSize: 112.0,
//                                                color: Colors.white),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                      AnimatedBuilder(
//                          animation: controller,
//                          builder: (context, child) {
//                            return FloatingActionButton.extended(
//                                heroTag: "btn1",
//                                onPressed: () {
//                                  if (controller.isAnimating)
//                                    controller.stop();
//                                  else {
//                                    controller.reverse(
//                                        from: controller.value == 0.0
//                                            ? 1.0
//                                            : controller.value);
//                                  }
//                                },
//                                icon: Icon(controller.isAnimating
//                                    ? Icons.pause
//                                    : Icons.play_arrow),
//                                label: Text(
//                                    controller.isAnimating ? "Pause" : "Play"));
//                          }),
//                      FloatingActionButton(
//                        heroTag: "btn2",
//                        child: Text(
//                          'Done',
//
//                        ),
//                        onPressed: () {
//                          Navigator.pop(context);
//                        },
//                      )
//                    ],
//                  ),
//                ),
//              ],
//            );
//          }),
//    );
//  }
//}
//
//class CustomTimerPainter extends CustomPainter {
//  CustomTimerPainter({
//    this.animation,
//    this.backgroundColor,
//    this.color,
//  }) : super(repaint: animation);
//
//  final Animation<double> animation;
//  final Color backgroundColor, color;
//
//  @override
//  void paint(Canvas canvas, Size size) {
//    Paint paint = Paint()
//      ..color = backgroundColor
//      ..strokeWidth = 10.0
//      ..strokeCap = StrokeCap.butt
//      ..style = PaintingStyle.stroke;
//
//    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
//    paint.color = color;
//    double progress = (1.0 - animation.value) * 2 * math.pi;
//    canvas.drawArc(Offset.zero & size, math.pi * 1.5, -progress, false, paint);
//  }
//
//  @override
//  bool shouldRepaint(CustomTimerPainter old) {
//    return animation.value != old.animation.value ||
//        color != old.color ||
//        backgroundColor != old.backgroundColor;
//  }
//}
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:percent_indicator/circular_percent_indicator.dart';

class ActivityTimer extends StatelessWidget {
  final String image =
      'assets/images/image001.jpg';
  final String tag = 'imageHeader';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: OrientationBuilder(builder: (context, orientation) {
          return Portrait(image: this.image, tag: this.tag);

        }),
      ),
    );
  }
}

class Portrait extends StatelessWidget {
  final String image, tag;

  Portrait({@required this.image, @required this.tag});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Hero(
              tag: this.tag,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                child: Image.asset(
                  this.image,
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
        Container(
          padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
          height: size.height - 270.0,
          width: size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      'Chest',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Calories: 300kCal',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: CircularPercentIndicator(
                      radius: size.width * 0.60,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 16.0,
                      percent: 0.98,
                      center: new Text(
                        '15:00',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[400],
                        ),
                      ),
                      backgroundColor: Colors.grey[300],
                      circularStrokeCap: CircularStrokeCap.round,
                      linearGradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(190, 130, 255, 1.0),
                          Color.fromRGBO(105, 139, 255, 1.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 150.0,
                    height: 55.0,
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 242, 248, 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Color.fromRGBO(82, 126, 255, 1.0),
                      size: 35.0,
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      width: size.width - 200.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(232, 242, 248, 1.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          'Done',
                          style: TextStyle(
                            color: Color.fromRGBO(82, 126, 255, 1.0),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
