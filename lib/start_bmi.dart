import 'package:bmi/model.dart';
import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartBmi extends StatefulWidget {
   StartBmi({super.key, required this.change,required this.isSel});
  final Function(bool) change;
    bool isSel = true;

  @override
  State<StartBmi> createState() => _StartBmiState();
}

class _StartBmiState extends State<StartBmi> {
  bool male = true;
  double slider = 160;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("BMI Calculator"),
        centerTitle: true,
        leading: Switch(
          value: widget.isSel,
          onChanged: widget.change,
          activeTrackColor: Color(0xff3D81E8),
          inactiveTrackColor: Color(0xff3D81E8),
        ),
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Expanded(
              child: Row(
                spacing: 9,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        male = true;
                        setState(() {});
                      },

                      child: Container(
                        height: 180,
                        width: 154,
                        decoration: BoxDecoration(
                          color: (male)
                              ? Theme.of(context).secondaryHeaderColor
                              : Theme.of(context).focusColor,

                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: (male)
                                ? Theme.of(context).highlightColor
                                : Theme.of(context).primaryColor,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: .spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/image/male.png",
                              width: 96,
                              height: 96,
                              color: (male)
                                  ? Theme.of(context).highlightColor
                                  : Theme.of(context).iconTheme.color,
                            ),
                            Text(
                              "Male",
                              style: Theme.of(
                                context,
                              ).primaryTextTheme.bodyMedium,
                              textAlign: .center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        male = false;
                        setState(() {});
                      },

                      child: Container(
                        height: 180,
                        width: 160,
                        decoration: BoxDecoration(
                          color: (!male)
                              ? Theme.of(context).secondaryHeaderColor
                              : Theme.of(context).focusColor,

                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: (!male)
                                ? Theme.of(context).highlightColor
                                : Theme.of(context).primaryColor,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: .spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/image/female.png",
                              width: 66,
                              height: 102,
                              color: (!male)
                                  ? Theme.of(context).highlightColor
                                  : Theme.of(context).iconTheme.color,
                            ),
                            Text(
                              "Female",
                              style: Theme.of(
                                context,
                              ).primaryTextTheme.bodyMedium,
                              textAlign: .center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: 350,
                height: 190,
                decoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: 27),
                    Expanded(
                      child: Text(
                        "Height",

                        style: Theme.of(context).primaryTextTheme.bodyMedium,
                      ),
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .end,
                        children: [
                          Text(
                            slider.roundToDouble().toString(),

                            style: Theme.of(context).primaryTextTheme.bodyLarge,
                          ),
                          Text(
                            "cm",

                            style: TextStyle(
                              fontWeight: .w500,
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Slider(
                        min: 50,
                        max: 250,
                        value: slider,
                        activeColor: Color(0xff3D81E8),

                        onChanged: (value) {
                          slider = value;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Row(
                spacing: 9,

                children: [
                  Expanded(
                    child: Container(
                      height: 180,
                      width: 155,
                      decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Text(
                              "Weight",

                              style: Theme.of(
                                context,
                              ).primaryTextTheme.bodyMedium,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              weight.toString(),

                              style: Theme.of(
                                context,
                              ).primaryTextTheme.bodyLarge,
                            ),
                          ),

                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      if (weight >= 1) {
                                        weight++;
                                        setState(() {});
                                      }
                                    },
                                    icon: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff8B8C9E),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 24,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      if (weight > 1) {
                                        weight--;
                                        setState(() {});
                                      }
                                    },
                                    icon: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff8B8C9E),
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        size: 24,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 180,
                      width: 155,
                      decoration: BoxDecoration(
                        color: Theme.of(context).focusColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Text(
                              "Age",

                              style: Theme.of(
                                context,
                              ).primaryTextTheme.bodyMedium,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              age.toString(),

                              style: Theme.of(
                                context,
                              ).primaryTextTheme.bodyLarge,
                            ),
                          ),

                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      if (age >= 1) {
                                        age++;
                                        setState(() {});
                                      }
                                    },
                                    icon: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff8B8C9E),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 24,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      if (age > 1) {
                                        age--;
                                        setState(() {});
                                      }
                                    },
                                    icon: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff8B8C9E),
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        size: 24,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 27),
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: MaterialButton(
          onPressed: () {
            Bmi result = Bmi(age: age, gender: (male)?"Male":"Female", height: slider, weight: weight);
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Result(bmi: result)),
            );
          },
          height: 100,
          minWidth: 360,

          color: Color(0xff3D81E8),
          child: Text(
            "Calculate",
            style: TextStyle(
              fontWeight: .w600,
              fontSize: 32,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }
}
