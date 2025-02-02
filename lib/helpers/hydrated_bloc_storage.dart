import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:split_receipt/blocs/bloc_models/bloc_state.dart';

class HydratedBlocStorage implements HydratedStorage {
  final HydratedStorage _storage;

  HydratedBlocStorage(this._storage);

  void _resetBlocActionState(Map<String, dynamic> data) {
    for (final key in data.keys) {
      final value = data[key];
      if (value is Map<String, dynamic>) {
        _resetBlocActionState(value);
      } else if (key == 'status') {
        data[key] = BlocStatus.idle.name;
      }
    }
  }

  @override
  Future<void> write(String key, dynamic value) async {
    Map<String, dynamic> tempMap = {key: value};
    _resetBlocActionState(tempMap);
    await _storage.write(key, tempMap[key]);
  }

  @override
  Future<void> clear() async {
    await _storage.clear();
  }

  @override
  Future<void> close() async {
    await _storage.close();
  }

  @override
  Future<void> delete(String key) async {
    await _storage.delete(key);
  }

  @override
  dynamic read(String key) {
    return _storage.read(key);
  }
}
