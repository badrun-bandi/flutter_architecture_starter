import 'package:flutter/cupertino.dart';
import 'package:flutter_architecture_starter/model/base.model.dart';
import 'package:provider/provider.dart';

class ChangeProvider<T extends ChangeNotifier> extends StatelessWidget {
  final ChangeNotifier model;
  final Widget Function(T model) builder;

  ChangeProvider({@required this.builder, @required this.model});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (BuildContext context2) => model,
      child: Consumer<T>(
        builder: (BuildContext context, T value, Widget child) =>
            builder(value),
      ),
    );
  }
}
