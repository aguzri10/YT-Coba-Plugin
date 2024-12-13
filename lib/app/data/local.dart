import 'package:yt_coba_plugin/app/models/plugin.dart';
import 'package:yt_coba_plugin/routes/paths.dart';

class LocalData {
  static List<PluginModel> plugins() {
    return [
      PluginModel(
        id: 1,
        name: 'get_storage',
        desc: 'Plugin for simple local storage',
        path: Paths.getStorage,
      ),
      PluginModel(
        id: 2,
        name: 'shimmer',
        desc: 'Plugin for loading animation/placeholder',
        path: Paths.getStorage,
      ),
    ];
  }
}
