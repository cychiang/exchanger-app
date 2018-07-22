///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

import 'dart:async';

import 'package:grpc/grpc.dart';

import 'oxr.pb.dart';
export 'oxr.pb.dart';

class oxrClient extends Client {
  static final _$get = new ClientMethod<OxrInput, OxrOutput>(
      '/oxr.oxr/Get',
      (OxrInput value) => value.writeToBuffer(),
      (List<int> value) => new OxrOutput.fromBuffer(value));

  oxrClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<OxrOutput> get(OxrInput request, {CallOptions options}) {
    final call = $createCall(_$get, new Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class oxrServiceBase extends Service {
  String get $name => 'oxr.oxr';

  oxrServiceBase() {
    $addMethod(new ServiceMethod<OxrInput, OxrOutput>(
        'Get',
        get_Pre,
        false,
        false,
        (List<int> value) => new OxrInput.fromBuffer(value),
        (OxrOutput value) => value.writeToBuffer()));
  }

  Future<OxrOutput> get_Pre(ServiceCall call, Future request) async {
    return get(call, await request);
  }

  Future<OxrOutput> get(ServiceCall call, OxrInput request);
}
