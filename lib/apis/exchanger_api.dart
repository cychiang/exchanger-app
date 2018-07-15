import 'dart:async';

import 'package:exchanger/protos/open_exchanger.pb.dart';
import 'package:exchanger/protos/open_exchanger.pbgrpc.dart';
import 'package:grpc/grpc.dart';

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

  Future<List<GrpcRate>> get(OxrInput query) async {
    List<GrpcRate> list = [];
    await for (GrpcRate rate in stub.getOxrLatest(query)) {
      if (rate.currency == "null") {
        break;
      } else {
        list.add(GrpcRate()
          ..currency = rate.currency
          ..ratio = rate.ratio);
      }
    }
    return list;
  }
}
