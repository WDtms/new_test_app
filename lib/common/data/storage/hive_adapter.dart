import 'dart:async';
import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:new_test_app/common/data/model/serializable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class HiveAdapter<T extends Serializable> extends TypeAdapter<T> {
  final T Function(Map<String, dynamic> json) fromJson;

  HiveAdapter({required this.fromJson});

  final Completer<void> _hiveInitCompleter = Completer();

  static const String _hiveDir = 'hive';

  Future<void> registerInHive() async {
    if (_hiveInitCompleter.isCompleted) {
      return;
    }
    Hive.init(await _getHiveDir());
    if (!Hive.isAdapterRegistered(typeId)) {
      Hive.registerAdapter(this);
    }
    _hiveInitCompleter.complete();
  }

  @override
  T read(BinaryReader reader) {
    return fromJson(json.decode(reader.read()));
  }

  @override
  void write(BinaryWriter writer, T obj) {
    writer.write(json.encode(obj.toJson()));
  }

  @override
  int get typeId => 1;

  Future<String> _getHiveDir() async {
    final appDir = await getApplicationDocumentsDirectory();
    return join(appDir.path, _hiveDir);
  }
}