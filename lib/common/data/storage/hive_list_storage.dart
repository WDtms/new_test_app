import 'package:hive/hive.dart';
import 'package:new_test_app/common/data/model/result.dart';
import 'package:new_test_app/common/data/model/serializable.dart';
import 'package:new_test_app/common/data/storage/hive_adapter.dart';

class HiveListStorage<T extends Serializable> {
  final String _boxKey = T.toString();

  final HiveAdapter<T> _adapter;
  HiveListStorage(this._adapter);

  Box<List>? _box;

  Future<bool> _init() async{
    await _adapter.registerInHive();
    try {
      _box ??= await Hive.openBox(_boxKey);
    } catch (e) {
      return false;
    }
    return true;
  }

  Future<Result<void, void>> save(List<T> batch) async {
    if (!await _init()) {
      if (!await _reset()) {
        return const Result.error(null);
      }
    }
    try {
      await _box!.put(_boxKey, batch);
      return const Result.data(null);
    } catch (e) {
      return const Result.error(null);
    }
  }

  Future<Result<List<T>, void>> read() async {
    if (!await _init()) {
      return const Result.error(null);
    }
    try {
      var result = _box!.get(_boxKey);
      return Result.data(result?.map((e) => e as T).toList() ?? List.empty());
    } catch (e) {
      return const Result.error(null);
    }
  }

  Future<bool> _reset() async {
    try {
      await Hive.deleteBoxFromDisk(_boxKey);
    } catch (e) {
      return false;
    }
    _box = null;
    return _init();
  }
}