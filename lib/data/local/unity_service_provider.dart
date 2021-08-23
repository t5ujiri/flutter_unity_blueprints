import 'dart:async';

import 'package:flutter_unity_blueprints/gen/protos/unity.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_unity_blueprints/ui/page/jumper/jumper_page.dart';

final unityResponseSubject =
    Provider<BehaviorSubject<AppResponse>>((ref) => BehaviorSubject());

final unityService = Provider.autoDispose((ref) => UnityServiceImpl(ref));

class UnityServiceImpl extends UnityServiceBase {
  final ProviderRefBase _ref;

  UnityServiceImpl(this._ref);

  @override
  Stream<AppResponse> sync(ServiceCall call, Stream<AppRequest> request) async* {
    final source = _ref.read(unityResponseSubject).stream;

    request.listen((event) {
      switch (event.whichRequest()) {
        case AppRequest_Request.jumperRequest:
          _ref.read(jumperViewModel.notifier).canJump = event.jumperRequest.canJump;
          _ref.read(jumperViewModel.notifier).height = event.jumperRequest.position.y;
          break;
        case AppRequest_Request.notSet:
          // TODO: Handle this case.
          break;
      }
    });

    while (!call.isCanceled) {
      try {
        await for (final data in source) {
          yield data;
        }
      } catch (ex) {
        print(ex);
      }
    }

    // await dispose.cancel();
  }
}
