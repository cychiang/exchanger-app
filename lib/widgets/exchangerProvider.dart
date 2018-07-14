import 'package:flutter/widgets.dart';
import '../blocs/exchangerBloc.dart';
import '../apis/grpc_api.dart';

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
