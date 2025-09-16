import 'package:hive_ce/hive.dart';

import 'models/hive_sender_key_name/hive_sender_key_name.dart';
import 'models/hive_signal_key_store/hive_signal_key_store.dart';
import 'models/hive_signal_protocol_address/hive_signal_protocol_address.dart';

class HiveSignalStore {
  static Future<void> initialize() async {
    if (!Hive.isAdapterRegistered(220)) {
      Hive.registerAdapter<HiveSignalKeyStoreModel>(
          HiveSignalKeyStoreModelAdapter());
    }
    if (!Hive.isAdapterRegistered(221)) {
      Hive.registerAdapter<HiveSignalProtocolAddress>(
          HiveSignalProtocolAddressAdapter());
    }
    if (!Hive.isAdapterRegistered(222)) {
      Hive.registerAdapter<HiveSenderKeyName>(HiveSenderKeyNameAdapter());
    }
  }

  static Future<void> initializeIsolated() async {
    if (!IsolatedHive.isAdapterRegistered(220)) {
      IsolatedHive.registerAdapter<HiveSignalKeyStoreModel>(
          HiveSignalKeyStoreModelAdapter());
    }
    if (!IsolatedHive.isAdapterRegistered(221)) {
      IsolatedHive.registerAdapter<HiveSignalProtocolAddress>(
          HiveSignalProtocolAddressAdapter());
    }
    if (!IsolatedHive.isAdapterRegistered(222)) {
      IsolatedHive.registerAdapter<HiveSenderKeyName>(
          HiveSenderKeyNameAdapter());
    }
  }
}
