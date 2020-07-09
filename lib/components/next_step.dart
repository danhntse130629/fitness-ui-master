 import 'package:animated_dialog_box/animated_dialog_box.dart';
import 'package:flutter/material.dart';

class NextStep extends StatelessWidget {
  final String image, title;

  final String rep;
  NextStep({
    @required this.image,
    @required this.title,
    //@required this.seconds,
    @required this.rep,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () async {
              await animated_dialog_box.showScaleAlertBox(
                  //title:Center(child: Text("Bench Press")) , // IF YOU WANT TO ADD
                  title: Center(child: Text(title)) ,
                  context: context,
                  firstButton: MaterialButton(
                    // FIRST BUTTON IS REQUIRED
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    color: Colors.white,
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),

                  icon: Icon(Icons.info_outline,color: Colors.red,), // IF YOU WANT TO ADD ICON
                  yourWidget: Container(
                    child: Column(
                      children: <Widget>[
                        new Image.asset(image),
                        new Text(rep),
                      ],
                    ),
                  ));
            },
            child: Container(
            height: 60.0,
            width: 60.0,
            margin: EdgeInsets.only(
              right: 20.0,
              bottom: 20.0,
            ),
            decoration: BoxDecoration(
              
              image: DecorationImage(
                
                image: AssetImage(
                  this.image,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        Container(
          height: 65.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.title,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black87,
                ),
              ),
              
              Text(
                '${this.rep}',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.blueGrey[200],
                ),
              ),
              
            ],
          ),
        ),
      ],
    );
  }
}