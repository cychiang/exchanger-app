import 'dart:async';
import 'dart:convert';
import 'package:exchanger/protos/oxr.pb.dart';
import 'package:exchanger/protos/oxr.pbgrpc.dart';
import 'package:grpc/grpc.dart';

// 10.0.2.2: Android for localhost
// localhost: iOS

class API {
  ClientChannel channel;
  oxrClient stub;

  API() {
    channel = new ClientChannel('localhost',
        port: 8080,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    stub = new oxrClient(channel,
        options: new CallOptions(timeout: new Duration(seconds: 30)));
  }

  Future<Map> get(OxrInput input) async {
    var output = await stub.get(input);
    return await json.decode(output.message);
  }
}
