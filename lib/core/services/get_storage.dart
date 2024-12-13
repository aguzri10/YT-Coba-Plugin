import 'package:get_storage/get_storage.dart';

class GSServices {
  static final box = GetStorage();

  static Future init() async => await GetStorage.init();

  static dynamic int(String key) {
    return box.read(key);
  }

  static Future setInt(String key, dynamic value) async {
    await box.write(key, value);
  }

  static Future remove(String key) async {
    await box.remove(key);
  }
}
