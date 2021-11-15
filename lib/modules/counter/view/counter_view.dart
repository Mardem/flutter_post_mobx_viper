import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:post_mobx_viper/modules/counter/presenter/counter_presenter.dart';

class CounterView extends StatelessWidget {
  CounterView({Key? key}) : super(key: key);

  final counter = CounterPresenter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Observer(
              builder: (BuildContext context) => Text(
                '${counter.value}', // Antes era $_counter
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
      ),
    );
  }
}
