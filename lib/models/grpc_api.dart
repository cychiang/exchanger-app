import 'dart:async';
import 'package:grpc/grpc.dart';
import '../src/generated/protos/open_exchanger.pb.dart';
import '../src/generated/protos/open_exchanger.pbgrpc.dart';

class API {
  ClientChannel channel;
  OpenExchangerClient stub;
  API() {
    channel = new ClientChannel('localhost',
        port: 8080,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    stub = new OpenExchangerClient(channel,
        options: new CallOptions(timeout: new Duration(seconds: 30)));
  }

  Future<List<GrpcRate>> get(String query) async {
    OxrInput request = new OxrInput()..symbols="JPY,USD,SEK"..base="TWD";
    List<GrpcRate> list = [];
    await for (GrpcRate rate in stub.getOxrLatest(request)) {
      if (rate.currency == "null") {
        break;
      } else {
        list.add(GrpcRate()..currency=rate.currency..ratio=rate.ratio);
      }
    }
    return list;
  }
}
