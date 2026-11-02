import 'package:bmi/model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  Result({super.key, required this.bmi});
  Bmi bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,

      appBar: AppBar(title: Text("BMI Calculator")),

      body: Column(
        mainAxisAlignment: .spaceEvenly,
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: 25),
          Text(
            "Your Result",
            style: Theme.of(context).primaryTextTheme.bodyLarge,
          ),
          Expanded(
            child: Center(
              child: Container(
                width: 319,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).focusColor,
                ),
                child: Column(
                  crossAxisAlignment: .center,
                  mainAxisAlignment: .spaceAround,
                  children: [
                    SizedBox(height: 25),
                    Expanded(
                      child: Text(
                        bmi.title,
                        style: TextStyle(
                          fontWeight: .w700,
                          fontSize: 20,
                          color: bmi.titleColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        bmi.calculateBmi.toString(),
                        style: Theme.of(context).primaryTextTheme.displayLarge,
                      ),
                    ),
                    Expanded(
                      child: Text(
                       bmi.description,
                        style: Theme.of(context).primaryTextTheme.bodyMedium,
                        textAlign: .center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 25),
        ],
      ),

      bottomNavigationBar: SafeArea(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          height: 100,
          minWidth: 360,

          color: Color(0xff3D81E8),
          child: Text(
            "REcalculate",
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
