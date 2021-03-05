import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<TestPageState> buildEffect() {
  return combineEffects(<Object, Effect<TestPageState>>{
    TestPageAction.action1: _onAction,
    TestPageAction.action2: _onAction2,
    TestPageAction.action3: _onAction3,
  });
}

void _onAction(Action action, Context<TestPageState> ctx) {
}

void _onAction2(Action action, Context<TestPageState> ctx) {

}

void _onAction3(Action action, Context<TestPageState> ctx) {

}