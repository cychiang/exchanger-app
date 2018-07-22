import "dart:async";
import 'package:exchanger/protos/oxr.pb.dart';
import "package:exchanger/apis/exchanger_api.dart";
import 'package:rxdart/rxdart.dart';

class ExchangerBloc {
  final API api;

  Stream<Map> _results = Stream.empty();
  Stream<String> _log = Stream.empty();

  ReplaySubject<OxrInput> _query = ReplaySubject<OxrInput>();

  Stream<Map> get results => _results;

  Stream<String> get log => _log;

  Sink<OxrInput> get query => _query;

  ExchangerBloc(this.api) {
    _results = _query.distinct().asyncMap(api.get).asBroadcastStream();

    _log = Observable(results)
        .withLatestFrom(_query.stream, (_, query) => 'Results for $query')
        .asBroadcastStream();
  }

  void dispose() {
    _query.close();
  }
}
