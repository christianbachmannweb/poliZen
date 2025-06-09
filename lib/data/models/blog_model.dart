class Blog {
  final DateTime createdAt;
  final String titel;
  final bool like;
  final String image;
  final String excerp;
  final String richText;
  final int id;
  final List<Quelle> quelle;

  Blog({
    required this.createdAt,
    required this.titel,
    required this.like,
    required this.image,
    required this.excerp,
    required this.richText,
    required this.id,
    required this.quelle,
  });
}

class Quelle {
  final String quelle;
  final String url;

  Quelle({required this.quelle, required this.url});
}
