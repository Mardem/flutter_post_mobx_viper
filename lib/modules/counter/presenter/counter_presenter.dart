import 'package:mobx/mobx.dart';

part 'counter_presenter.g.dart';

class CounterPresenter = _CounterPresenter with _$CounterPresenter;

abstract class _CounterPresenter with Store {
  @observable
  int value = 0;

  @action
  increment() {
    value++;
  }
}
