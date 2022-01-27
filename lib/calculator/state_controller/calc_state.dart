import 'package:math_expressions/math_expressions.dart';
import 'package:mobx/mobx.dart';

part 'calc_state.g.dart';

class CalcState extends _CalcState with _$CalcState {
  CalcState();
}

abstract class _CalcState with Store {
  Parser parser = Parser();
  ContextModel cm = ContextModel();

  @observable
  String userInput = "";

  @observable
  String answer = "";

  @action
  void clean() {
    userInput = "";
    answer = "";
  }

  @action
  void delete() {
    if (userInput.length > 1) {
      userInput = userInput.substring(0, userInput.length - 1);
    }
  }

  @action
  void adduserInput(String inputChar) {
    userInput = userInput + inputChar;
    print(userInput);
  }

  @action
  void result() {
    Expression exp = parser.parse(userInput);

    answer = exp.evaluate(EvaluationType.REAL, cm).toString();
  }
}
