///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

import 'dart:async';

import 'package:grpc/grpc.dart';

import 'package:exchanger/protos/open_exchanger.pb.dart';
export 'package:exchanger/protos/open_exchanger.pb.dart';

class OpenExchangerClient extends Client {
  static final _$getOxrLatest = new ClientMethod<OxrInput, GrpcRate>(
      '/openexchanger.OpenExchanger/GetOxrLatest',
      (OxrInput value) => value.writeToBuffer(),
      (List<int> value) => new GrpcRate.fromBuffer(value));
  static final _$getOxrHistorical = new ClientMethod<OxrInput, GrpcRate>(
      '/openexchanger.OpenExchanger/GetOxrHistorical',
      (OxrInput value) => value.writeToBuffer(),
      (List<int> value) => new GrpcRate.fromBuffer(value));
  static final _$getOxrCurrencies = new ClientMethod<OxrInput, GrpcCurrency>(
      '/openexchanger.OpenExchanger/GetOxrCurrencies',
      (OxrInput value) => value.writeToBuffer(),
      (List<int> value) => new GrpcCurrency.fromBuffer(value));

  OpenExchangerClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseStream<GrpcRate> getOxrLatest(OxrInput request,
      {CallOptions options}) {
    final call = $createCall(_$getOxrLatest, new Stream.fromIterable([request]),
        options: options);
    return new ResponseStream(call);
  }

  ResponseStream<GrpcRate> getOxrHistorical(OxrInput request,
      {CallOptions options}) {
    final call = $createCall(
        _$getOxrHistorical, new Stream.fromIterable([request]),
        options: options);
    return new ResponseStream(call);
  }

  ResponseStream<GrpcCurrency> getOxrCurrencies(OxrInput request,
      {CallOptions options}) {
    final call = $createCall(
        _$getOxrCurrencies, new Stream.fromIterable([request]),
        options: options);
    return new ResponseStream(call);
  }
}

abstract class OpenExchangerServiceBase extends Service {
  String get $name => 'openexchanger.OpenExchanger';

  OpenExchangerServiceBase() {
    $addMethod(new ServiceMethod<OxrInput, GrpcRate>(
        'GetOxrLatest',
        getOxrLatest_Pre,
        false,
        true,
        (List<int> value) => new OxrInput.fromBuffer(value),
        (GrpcRate value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<OxrInput, GrpcRate>(
        'GetOxrHistorical',
        getOxrHistorical_Pre,
        false,
        true,
        (List<int> value) => new OxrInput.fromBuffer(value),
        (GrpcRate value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<OxrInput, GrpcCurrency>(
        'GetOxrCurrencies',
        getOxrCurrencies_Pre,
        false,
        true,
        (List<int> value) => new OxrInput.fromBuffer(value),
        (GrpcCurrency value) => value.writeToBuffer()));
  }

  Stream<GrpcRate> getOxrLatest_Pre(ServiceCall call, Future request) async* {
    yield* getOxrLatest(call, (await request) as OxrInput);
  }

  Stream<GrpcRate> getOxrHistorical_Pre(
      ServiceCall call, Future request) async* {
    yield* getOxrHistorical(call, (await request) as OxrInput);
  }

  Stream<GrpcCurrency> getOxrCurrencies_Pre(
      ServiceCall call, Future request) async* {
    yield* getOxrCurrencies(call, (await request) as OxrInput);
  }

  Stream<GrpcRate> getOxrLatest(ServiceCall call, OxrInput request);
  Stream<GrpcRate> getOxrHistorical(ServiceCall call, OxrInput request);
  Stream<GrpcCurrency> getOxrCurrencies(ServiceCall call, OxrInput request);
}
