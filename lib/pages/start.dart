import 'package:flutter/material.dart';
import 'package:fitness_flutter/bmi/components/bottom_button.dart';
import 'package:fitness_flutter/bmi/screens/input_page.dart';
enum Gender {
  male,
  female,
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/bg.jpg",),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[

            SizedBox(height: 100),
//              SizedBox(height: 50,),
              Center(child: Image.asset("assets/images/start1.png",height: 300,
                width: 300,alignment: Alignment.center,)),
              SizedBox(height: 8,),
              Text(
                'Welcome to VIGOUR, a diet and training app.',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(height: 198),
              Text(
                'We need some information to recommended your training plan',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              SizedBox(height: 10,),
              BottomButton(
                buttonTitle: 'Let\'s Start',
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        )
    );
  }
}
