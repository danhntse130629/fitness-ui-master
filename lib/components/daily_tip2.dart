import 'package:flutter/material.dart';

class DailyTip2 extends StatelessWidget {

  final Map<String, String> element = {
    'title': 'Stay in control',
    'subtitle': 'Do not use momentum instead of your abs to do the work. Keep your middle muscles contracted throughout the entire motion',
    'image': 'assets/images/pic02.jpg',
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width * 0.80;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: width,
          height: 200.0,
          margin: EdgeInsets.only(
            right: 15.0,
            bottom: 10.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(this.element['image']),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
        ),
        Text(
          this.element['title'],
          style: TextStyle(fontSize: 14.0),
        ),
        Container(
          width: width,
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            this.element['subtitle'],
            style: TextStyle(
              color: Colors.black45,
              fontSize: 14.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 15.0,
          ),
          child: Text(
            'More',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            color: Colors.lightBlue,
          ),
        ),
      ],
    );
  }
}
