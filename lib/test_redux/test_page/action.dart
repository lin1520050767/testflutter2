import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TestPageAction { action1, action2, action3 }

class TestPageActionCreator {
  static Action onAction() {
    return const Action(TestPageAction.action1);
  }

  static Action onAction2() {
    return const Action(TestPageAction.action2);
  }

  static Action onAction3() {
    return const Action(TestPageAction.action3);
  }
}
