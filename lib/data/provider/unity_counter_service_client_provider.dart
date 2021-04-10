import 'package:flutter_unity_blueprints/data/provider/local_grpc_channel_provider.dart';
import 'package:flutter_unity_blueprints/gen/protos/counter.pbgrpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final unityCounterServiceClientProvider = Provider<CounterServiceClient>((ref) {
  var channel = ref.watch(localGrpcChannelProvider);

  return CounterServiceClient(channel);
});
