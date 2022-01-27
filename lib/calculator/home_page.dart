import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo_app1/calculator/generator/button_generator.dart';
import 'package:mobx_demo_app1/calculator/global.dart';

class CalcHomePage extends StatefulWidget {
  const CalcHomePage({Key? key}) : super(key: key);

  @override
  Calc_HomePageState createState() => Calc_HomePageState();
}

class Calc_HomePageState extends State<CalcHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        elevation: 4,
        title: Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Observer(builder: (_) {
              // ignore: avoid_unnecessary_containers
              return Container(
                color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        calculator.userInput.toString(),
                        style:
                            const TextStyle(fontSize: 35, color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(calculator.answer,
                          style: const TextStyle(fontSize: 70)),
                    ),
                  ],
                ),
              );
            }),
          ),
          const Divider(),
          Expanded(
              flex: 2,
              child: GridView.builder(
                  itemCount: calGrid.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return calGrid[index];
                  }))
        ],
      ),
    );
  }
}
