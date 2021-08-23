import 'package:flutter_unity_blueprints/data/local/unity_service_provider.dart';
import 'package:flutter_unity_blueprints/gen/protos/unity.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final unityRepository = Provider((ref) => UnityRepository(ref.read));

class UnityRepository {
  final Reader _read;

  UnityRepository(this._read);

  void mutate(AppResponse state) {
    _read(unityResponseSubject).add(state);
  }
}
