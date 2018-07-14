import 'package:exchanger/apis/exchanger_api.dart';
import 'package:exchanger/blocs/exchanger_bloc.dart';
import 'package:flutter/widgets.dart';

class ExchangerProvider extends InheritedWidget {
  final ExchangerBloc exchangerBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static ExchangerBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(ExchangerProvider)
              as ExchangerProvider)
          .exchangerBloc;

  ExchangerProvider({Key key, ExchangerBloc exchangerBloc, Widget child})
      : this.exchangerBloc = exchangerBloc ?? ExchangerBloc(API()),
        super(child: child, key: key);
}
