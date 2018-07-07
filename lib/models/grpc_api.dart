import 'dart:async';
import 'package:grpc/grpc.dart';
import '../src/generated/protos/open_exchanger.pb.dart';
import '../src/generated/protos/open_exchanger.pbgrpc.dart';

class API {
  ClientChannel channel;
  OpenExchangerClient stub;
  API() {
    channel = new ClientChannel('0.0.0.0',
        port: 8080,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    stub = new OpenExchangerClient(channel,
        options: new CallOptions(timeout: new Duration(seconds: 30)));
  }

  Future<List<GrpcRate>> get(String query) async {
    final request = new OxrInput();
    List<GrpcRate> list = [];
    await for (GrpcRate rate in stub.getOxrLatest(request)) {
      list.add(rate);
    }
    return list;
  }
}
