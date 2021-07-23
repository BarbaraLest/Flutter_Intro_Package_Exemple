 import 'package:flutter/material.dart';
import 'package:flutter_intro/flutter_intro.dart';

Widget customThemeWidgetBuilder(StepWidgetParams stepWidgetParams) {
    List<String> texts = [
      'Olá, eu sou o flutter_intro',
      'text text text text text text text text text text text text text text text texttext text text text',
      'text text text text text text text text text text text text text text text texttext text text text',
    ];
    return Padding(
      padding: EdgeInsets.all(
        32,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${texts[stepWidgetParams.currentStepIndex]} (${stepWidgetParams.currentStepIndex + 1} / ${stepWidgetParams.stepCount})',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: stepWidgetParams.onNext,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                ),
                child: Text(
                  'Próximo',
                ),
              ),
              SizedBox(
                width: 16,
              ),
              ElevatedButton(
                onPressed: stepWidgetParams.onFinish,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                ),
                child: Text(
                  'Fechar',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }