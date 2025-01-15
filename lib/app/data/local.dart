import 'package:yt_coba_plugin/app/models/news.dart';
import 'package:yt_coba_plugin/app/models/plugin.dart';
import 'package:yt_coba_plugin/routes/paths.dart';

class LocalData {
  static List<PluginModel> plugins() {
    return [
      PluginModel(
        id: 1,
        name: 'get_storage',
        desc: 'A plugin for storing data locally in a simple way.',
        path: Paths.getStorage,
      ),
      PluginModel(
        id: 2,
        name: 'shimmer',
        desc: 'A plugin for creating loading animations (skeleton load).',
        path: Paths.shimmer,
      ),
      PluginModel(
        id: 3,
        name: 'gap',
        desc: 'A plugin for creating simple spacing between widgets.',
        path: Paths.gap,
      ),
    ];
  }

  static List<NewsModel> news() {
    return [
      NewsModel(
        id: 1,
        title: 'Lorem Ipsum is simply dummy text of the printing',
        desc:
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took",
        cover:
            'https://img.freepik.com/free-vector/world-economic-newspaper-composition_1284-19685.jpg?semt=ais_hybrid',
        category: 'Name of Category',
        author: AuthorModel(name: 'iamagusriy', photo: ''),
      ),
      NewsModel(
        id: 2,
        title:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. ',
        desc:
            'It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
        cover:
            'https://www.shutterstock.com/shutterstock/photos/2284791389/display_1500/stock-vector-front-page-newspaper-design-in-vector-template-2284791389.jpg',
        category: 'Name of Category',
        author: AuthorModel(name: 'iamagusriy', photo: ''),
      ),
      NewsModel(
        id: 3,
        title: 'It is a long established fact that a reader will be distracted',
        desc:
            'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
        cover:
            'https://img.freepik.com/premium-vector/realistic-newspaper-front-page-template_97886-2000.jpg',
        category: 'Name of Category',
        author: AuthorModel(name: 'iamagusriy', photo: ''),
      ),
    ];
  }

  static String get flutterImage =>
      'https://assets.bacancytechnology.com/qanda/wp-content/uploads/2024/07/05054447/Convert-a-Double-to-an-Int-in-Dart.jpg';
}
