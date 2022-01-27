import 'package:flutter/material.dart';
import 'package:mobx_demo_app1/calculator/global.dart';
import 'package:mobx_demo_app1/calculator/state_controller/calc_state.dart';
import 'package:mobx_demo_app1/calculator/widgets/buttons.dart';

var calGrid = [
  Button.orange(lable: 'AC', onTap: () => calculator.clean()),
  Button.red(lable: 'DEL', onTap: () => calculator.delete()),
  Button.blue(lable: '%', onTap: () => calculator.adduserInput('%')),
  Button.blue(lable: '÷', onTap: () => calculator.adduserInput('/')),
  Button.grey(lable: '7', onTap: () => calculator.adduserInput('7')),
  Button.grey(lable: '8', onTap: () => calculator.adduserInput('8')),
  Button.grey(lable: '9', onTap: () => calculator.adduserInput('9')),
  Button.blue(lable: 'x', onTap: () => calculator.adduserInput('*')),
  Button.grey(lable: '4', onTap: () => calculator.adduserInput('4')),
  Button.grey(lable: '5', onTap: () => calculator.adduserInput('5')),
  Button.grey(lable: '6', onTap: () => calculator.adduserInput('6')),
  Button.blue(lable: '-', onTap: () => calculator.adduserInput('-')),
  Button.grey(lable: '1', onTap: () => calculator.adduserInput('1')),
  Button.grey(lable: '2', onTap: () => calculator.adduserInput('2')),
  Button.grey(lable: '3', onTap: () => calculator.adduserInput('3')),
  Button.blue(lable: '+', onTap: () => calculator.adduserInput('+')),
  Button.blue(lable: '.', onTap: () => calculator.adduserInput('.')),
  Button.grey(lable: '0', onTap: () => calculator.adduserInput('0')),
  Button.grey(lable: ',', onTap: () {}),
  Button.blue(lable: '=', onTap: () => calculator.result()),
];
