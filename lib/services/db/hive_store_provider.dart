

import 'package:safe_ap/services/db/hive_store.dart';

/// This will provider the access of [ObjectStore] class,
/// And manage the single instance of [ObjectStore]
class HiveStoreProvider {
  static HiveStore? _instance;

  static final HiveStoreProvider _singleton = HiveStoreProvider._internal();

  HiveStoreProvider._internal() {
    _instance ??= HiveStore();
  }

  factory HiveStoreProvider() {
    return _singleton;
  }

  HiveStore getInstance() {
    return _instance!;
  }
}
