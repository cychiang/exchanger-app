import "dart:async";
import "grpc_api.dart";
import 'package:rxdart/rxdart.dart';
import '../src/generated/protos/open_exchanger.pb.dart';

class ExchangerBloc {
  final API api;

  Stream<List<GrpcRate>> _results = Stream.empty();
  Stream<String> _log = Stream.empty();

  ReplaySubject<String> _query = ReplaySubject<String>();

  Stream<List<GrpcRate>> get results => _results;
  Stream<String> get log => _log;
  Sink<String> get query => _query;

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
