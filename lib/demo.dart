import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HorizontalProgressStepper extends StatefulWidget {
  @override
  _HorizontalProgressStepperState createState() =>
      _HorizontalProgressStepperState();
}

class _HorizontalProgressStepperState extends State<HorizontalProgressStepper> {
  int _currentStep = 0;


  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.horizontal,
      currentStep: _currentStep,

      steps: [
        Step(
          title: Container(),
          content: Container(), // Replace with your content for Step 1
          isActive: _currentStep == 0,
          state: StepState.indexed,
        ),
        Step(
          title: Container(),
          content: Container(), // Replace with your content for Step 2
          isActive: _currentStep == 1,
        ),
        Step(
          title: Container(),
          content: Container(), // Replace with your content for Step 3
          isActive: _currentStep == 2,
        ),
      ],
      onStepContinue: () {
        setState(() {
          if (_currentStep < 2) {
            _currentStep += 1;
          }
        });
      },
      onStepCancel: () {
        setState(() {
          if (_currentStep > 0) {
            _currentStep -= 1;
          }
        });
      },
    );
  }
}
