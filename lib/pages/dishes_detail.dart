import 'package:fitness_flutter/components/next_step.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:flutter/material.dart';

class DishesDetail extends StatelessWidget {
  final String tag;
  final Exercise exercise;
  final double imageWidth;

  DishesDetail({
    @required this.exercise,
    @required this.tag,
    this.imageWidth,
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
                          fontSize: 30.0,
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
                              margin: EdgeInsets.only(right: 55.0),
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
                              margin: EdgeInsets.only(right: 45.0),
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
                      this.exercise.title == 'Salmon' ?

                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/salmon.jpg',
                              title: 'Salmon',
                              //seconds: 60,
                              rep: '100gr',
                            ),
                            NextStep(
                              image: 'assets/images/beans.jpg',
                              title: 'Beans',
                              //seconds: 50,
                              rep: '100gr',
                            ),
                            NextStep(
                              image: 'assets/images/pasta.jpg',
                              title: 'Pasta',
                              //seconds: 50,
                              rep: '100gr',
                            ),
                            Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\n1. Add oats, water or milk and salt to a pot over medium/high heat.\n\n2. Bring mixture to a boil, reduce heat and continue to cook for about 5-7 minutes; stirring occasionally.\n\n3. You oatmeal is ready when the oats have soaked up most of the liquid and are creamy. Transfer to a bowl and add your favorite toppings.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),

                      ) : this.exercise.title == 'Oatmeal' ?
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/oat.jpg',
                              title: 'Oat',
                              //seconds: 60,
                              rep: '40gr',
                            ),
                            NextStep(
                              image: 'assets/images/berry.jpg',
                              title: 'Berries',
                              //seconds: 50,
                              rep: '100gr',
                            ),
                            NextStep(
                              image: 'assets/images/hn.jpg',
                              title: 'Almond',
                              //seconds: 50,
                              rep: '10gr',
                            ),
                            NextStep(
                              image: 'assets/images/whey.png',
                              title: 'Whey protein',
                              //seconds: 50,
                              rep: '1 scoop',
                            ),
                            Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\n1. Add oats, water or milk and salt to a pot over medium/high heat.\n\n2. Bring mixture to a boil, reduce heat and continue to cook for about 5-7 minutes; stirring occasionally.\n\n3. You oatmeal is ready when the oats have soaked up most of the liquid and are creamy. Transfer to a bowl and add your favorite toppings.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ) : this.exercise.title == 'Omelette' ?

                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/egg.jpg',
                              title: 'Egg',
                              //seconds: 60,
                              rep: '2 eggs',
                            ),
                            NextStep(
                              image: 'assets/images/ham.jpg',
                              title: 'Ham',
                              //seconds: 50,
                              rep: '2 thin slide',
                            ),
                            NextStep(
                              image: 'assets/images/tomato.jpg',
                              title: 'Smallish tomato',
                              //seconds: 50,
                              rep: '1 Smallish tomato',
                            ),
                            Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\n1. BEAT eggs, water, salt and pepper in small bowl until blended.\n\n2. HEAT butter in 6 to 8-inch nonstick omelet pan or skillet over medium-high heat until hot. TILT pan to coat bottom. POUR egg mixture into pan. Mixture should set immediately at edges.\n\n3. Gently PUSH cooked portions from edges toward the center with inverted turner so that uncooked eggs can reach the hot pan surface. CONTINUE cooking, tilting pan and gently moving cooked portions as needed.\n\n4. When top surface of eggs is thickened and no visible liquid egg remains, PLACE filling on one side of the omelet. FOLD omelet in half with turner. With a quick flip of the wrist, TURN pan and INVERT or SLIDE omelet onto plate. SERVE immediately.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ) : this.exercise.title == 'Pancake' ?

                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/buttermilk.jpg',
                              title: 'Buttermilk pancake',
                              //seconds: 60,
                              rep: '2 cup',
                            ),
                            NextStep(
                              image: 'assets/images/cream.jpg',
                              title: 'Heavy whipping cream',
                              //seconds: 50,
                              rep: '1/2 cup',
                            ),
                            NextStep(
                              image: 'assets/images/syrup.jpg',
                              title: 'Maple syrup',
                              //seconds: 50,
                              rep: '2 tpsp',
                            ),
                            NextStep(
                              image: 'assets/images/milk.jpg',
                              title: 'Milk',
                              //seconds: 50,
                              rep: '2/3 cup',
                            ),
                            Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\n1. In a large bowl, mix flour, sugar, baking powder and salt. Make a well in the center, and pour in milk, egg and oil. Mix until smooth.\n\n2. Heat a lightly oiled griddle or frying pan over medium high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ): this.exercise.title == 'Chicken rice' ?

                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/chicken.jpg',
                              title: 'Chicken breast',
                              //seconds: 60,
                              rep: '150gr',
                            ),
                            NextStep(
                              image: 'assets/images/rice.jpg',
                              title: 'Rice',
                              //seconds: 50,
                              rep: '100gr',
                            ),
                            NextStep(
                              image: 'assets/images/tomato.jpg',
                              title: 'Smallish tomato',
                              //seconds: 50,
                              rep: '20gr',
                            ),
                            NextStep(
                              image: 'assets/images/spinatch.jpg',
                              title: 'Spinach',
                              //seconds: 50,
                              rep: '50gr',
                            ),
                            Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\n1. Toss the chicken breast with garlic powder, salt, and pepper. Heat olive oil in a 10-inch skillet over medium heat. Add chicken breast and cook until browned, stirring often, about 3 minutes. Add garlic to skillet and cook for 30 seconds more.\n\n2. Stir in rice and chicken broth. Bring to a boil, reduce to a simmer, and cover. Cook for 20 minutes, stirring occasionally.\n\n3. Remove pan from heat and place baby spinach on top of the rice. Cover and let sit for 5 minutes.\n\n4. Remove lid and stir well.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ) : this.exercise.title == 'Beef stir fry' ?

                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/beef.jpg',
                              title: 'Beef',
                              //seconds: 60,
                              rep: '150gr',
                            ),
                            NextStep(
                              image: 'assets/images/rice.jpg',
                              title: 'Rice',
                              //seconds: 50,
                              rep: '100gr',
                            ),
                            NextStep(
                              image: 'assets/images/spinatch.jpg',
                              title: 'Spinach',
                              //seconds: 50,
                              rep: '50gr',
                            ),
                            Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\n1. Cook the beef in batches in an oiled pan or wok about 2-3 minutes and then remove and set aside (overcrowding the pan causes the beef to steam, not fry).\n\n2. Cook the vegetables in a hot oiled pan or wok 4-5 minutes. They should still be crunchy. Set aside.\n\n3. In the same pan, combine the sauce ingredients, bring to a simmer and thicken with cornstarch. Add the beef and veggies back to the pan and cook until heated through.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ):this.exercise.title == 'Chicken breast salad' ?

                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/chicken.jpg',
                              title: 'Chicken breast',
                              //seconds: 60,
                              rep: '150gr',
                            ),
                            NextStep(
                              image: 'assets/images/tomato.jpg',
                              title: 'Smallish tomato',
                              //seconds: 50,
                              rep: '20gr',
                            ),
                            NextStep(
                              image: 'assets/images/spinatch.jpg',
                              title: 'Spinach',
                              //seconds: 50,
                              rep: '50gr',
                            ),
                            NextStep(
                              image: 'assets/images/broccoli.jpg',
                              title: 'Broccoli',
                              //seconds: 50,
                              rep: '50gr',
                            ),
                            NextStep(
                              image: 'assets/images/onion.jpg',
                              title: 'Onion',
                              //seconds: 50,
                              rep: '30gr',
                            ),
                            NextStep(
                              image: 'assets/images/potato.jpg',
                              title: 'Potato',
                              //seconds: 50,
                              rep: '200gr',
                            ),
                            NextStep(
                              image: 'assets/images/carrot.jpg',
                              title: 'Carrot',
                              //seconds: 50,
                              rep: '200gr',
                            ),
                            Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\n1. In medium bowl, beat oil, vinegar, garlic, mustard, sugar, salt and pepper with whisk until well blended. Reserve 1/2 cup of dressing for salad; set aside.\n\n2. Place chicken in resealable food-storage plastic bag; pour remaining dressing over chicken. Seal bag; turn to coat chicken with marinade. Refrigerate 30 minutes.\n\n3. Heat gas or charcoal grill. In medium bowl, toss tomatoes, cheese, shallot and 2 tablespoons of the reserved dressing; set aside.\n\n4. Remove chicken from marinade; discard marinade. Carefully brush oil on grill rack. Place chicken on grill over medium heat. Cover grill; cook 12 to 15 minutes, turning once, until juice of chicken is clear when center of thickest part is cut (165°F). Let stand 5 minutes; cut into 1/2-inch strips.\n\n5. Divide salad greens among 4 plates. Top with tomato mixture and chicken; drizzle with remaining dressing.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ):this.exercise.title == 'Curry rice' ?

                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/chicken.jpg',
                              title: 'Chicken breast',
                              //seconds: 60,
                              rep: '150gr',
                            ),
                            NextStep(
                              image: 'assets/images/rice.jpg',
                              title: 'Rice',
                              //seconds: 50,
                              rep: '100gr',
                            ),
                            NextStep(
                              image: 'assets/images/potato.jpg',
                              title: 'Potato',
                              //seconds: 50,
                              rep: '100gr',
                            ),
                            NextStep(
                              image: 'assets/images/carrot.jpg',
                              title: 'Carrot',
                              //seconds: 50,
                              rep: '100gr',
                            ),
                            NextStep(
                              image: 'assets/images/spices.jpg',
                              title: 'Spices',
                              //seconds: 50,
                              rep: '50gr',
                            ),
                            Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\n1. Cook the rice with the vegetable broth and to make it super easy use a Rice Cooker. Otherwise, use the instructions on your rice package.\n\n2. While the rice is cooking - in a large skillet - saute the chopped onion and green bell pepper in one tablespoon water until the onion is translucent. About 10 to 15 minutes.\n\n3. Stir in the curry powder, salt and pepper.\n\n4. Stir on low for 5 minutes.\n\n5. Add the cooked rice and frozen peas to the skillet mixture and heat through.\n\n6. Serve with the chopped green onions sprinkled over the top.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ):this.exercise.title == 'Chicken & stewed vegetables' ?

                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            NextStep(
                              image: 'assets/images/chicken.jpg',
                              title: 'Chicken breast',
                              //seconds: 60,
                              rep: '150gr',
                            ),
                            NextStep(
                              image: 'assets/images/potato.jpg',
                              title: 'Potato',
                              //seconds: 50,
                              rep: '50gr',
                            ),
                            NextStep(
                              image: 'assets/images/carrot.jpg',
                              title: 'Carrot',
                              //seconds: 50,
                              rep: '50gr',
                            ),
                            NextStep(
                              image: 'assets/images/beans.jpg',
                              title: 'Beans',
                              //seconds: 50,
                              rep: '50gr',
                            ),
                            NextStep(
                              image: 'assets/images/onion.jpg',
                              title: 'Onion',
                              //seconds: 50,
                              rep: '30gr',
                            ),
                            NextStep(
                              image: 'assets/images/broccoli.jpg',
                              title: 'Broccoli',
                              //seconds: 50,
                              rep: '50gr',
                            ),
                            Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\n1. Combine all chicken rub ingredients in bowl. Mix well. Rub all over the chicken breasts. Let it stay for 15 minutes.\n\n2. Set the oven to broil mode.\n\n3. Arrange the chicken on a baking tray.Broil each side for 4 minutes.\n\n4. Combine honey and vinegar in a small bowl. Stir until well blended. Brush both side of the chicken with honey mixture.\n\n5. Put back in the oven. Continue to broil each side for 4 to 5 minutes or until done.\n\n6. Remove from the oven and arrange in a plate.\n\n7. Meanwhile pour water on and steamer. Arrange the steamed vegetable ingredients in the steamer and steam for 8 to 12 minutes.\n\n8.Serve with the spicy honey chicken.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ):
                           this.exercise.title == 'Sliced fruit' ?
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[

                            NextStep(
                              image: 'assets/images/berry.jpg',
                              title: 'Berries',
                              //seconds: 50,
                              rep: '100gr',
                            ),
                            NextStep(
                              image: 'assets/images/hn.jpg',
                              title: 'Almond',
                              //seconds: 50,
                              rep: '10gr',
                            ),
                            NextStep(
                              image: 'assets/images/whey.png',
                              title: 'Whey protein',
                              //seconds: 50,
                              rep: '1 scoop',
                            ),
                            Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\n1. Add oats, water or milk and salt to a pot over medium/high heat.\n\n2. Bring mixture to a boil, reduce heat and continue to cook for about 5-7 minutes; stirring occasionally.\n\n3. You oatmeal is ready when the oats have soaked up most of the liquid and are creamy. Transfer to a bowl and add your favorite toppings.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ): this.exercise.title == 'Nuts' ?
                           Container(
                             margin: EdgeInsets.only(top: 15.0),
                             child: Column(
                               children: <Widget>[
                                 NextStep(
                                   image: 'assets/images/oat.jpg',
                                   title: 'Oat',
                                   //seconds: 60,
                                   rep: '40gr',
                                 ),
                                 NextStep(
                                   image: 'assets/images/berry.jpg',
                                   title: 'Berries',
                                   //seconds: 50,
                                   rep: '100gr',
                                 ),
                                 NextStep(
                                   image: 'assets/images/hn.jpg',
                                   title: 'Almond',
                                   //seconds: 50,
                                   rep: '10gr',
                                 ),
                                 NextStep(
                                   image: 'assets/images/whey.png',
                                   title: 'Whey protein',
                                   //seconds: 50,
                                   rep: '1 scoop',
                                 ),
                                 Text(
                                   'Instruction',
                                   style: TextStyle(
                                     fontSize: 23.0,
                                     color: Colors.black,
                                   ),
                                 ),
                                 Text(
                                   '\n1. Add oats, water or milk and salt to a pot over medium/high heat.\n\n2. Bring mixture to a boil, reduce heat and continue to cook for about 5-7 minutes; stirring occasionally.\n\n3. You oatmeal is ready when the oats have soaked up most of the liquid and are creamy. Transfer to a bowl and add your favorite toppings.',
                                   style: TextStyle(
                                     fontSize: 18.0,
                                     color: Colors.black87,
                                   ),
                                 ),
                               ],
                             ),
                           )
                               :
                           Container(
                             margin: EdgeInsets.only(top: 15.0),
                             child: Column(
                               children: <Widget>[

                                 NextStep(
                                   image: 'assets/images/berry.jpg',
                                   title: 'Berries',
                                   //seconds: 50,
                                   rep: '100gr',
                                 ),
                                 NextStep(
                                   image: 'assets/images/hn.jpg',
                                   title: 'Almond',
                                   //seconds: 50,
                                   rep: '10gr',
                                 ),
                                 NextStep(
                                   image: 'assets/images/whey.png',
                                   title: 'Whey protein',
                                   //seconds: 50,
                                   rep: '1 scoop',
                                 ),
                                 Text(
                                   'Instruction',
                                   style: TextStyle(
                                     fontSize: 23.0,
                                     color: Colors.black,
                                   ),
                                 ),
                                 Text(
                                   '\n1. Add oats, water or milk and salt to a pot over medium/high heat.\n\n2. Bring mixture to a boil, reduce heat and continue to cook for about 5-7 minutes; stirring occasionally.\n\n3. You oatmeal is ready when the oats have soaked up most of the liquid and are creamy. Transfer to a bowl and add your favorite toppings.',
                                   style: TextStyle(
                                     fontSize: 18.0,
                                     color: Colors.black87,
                                   ),
                                 ),
                               ],
                             ),
                           )
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
            'Add to tracker',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}