class NewsModel {
  final int? id;
  final String? title, desc, cover, category;
  final AuthorModel? author;

  NewsModel({
    this.id,
    this.title,
    this.desc,
    this.cover,
    this.category,
    this.author,
  });
}

class AuthorModel {
  final String? name, photo;

  AuthorModel({this.name, this.photo});
}
