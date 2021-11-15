import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:post_mobx_viper/modules/counter/view/counter_view.dart';

class CounterRoutes {
  static final Handler counterHandler = Handler(
    handlerFunc: (
      BuildContext? context,
      Map<String, List<String>> parameters,
    ) =>
        CounterView(),
  );
}
