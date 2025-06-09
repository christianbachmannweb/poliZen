class Meditation {
  final String titel;
  final String description;
  final int id;
  final bool like;
  final String audio;
  final int time;
  final DateTime createdAt;
  final String image;

  Meditation({
    required this.image,
    required this.titel,
    required this.description,
    required this.id,
    required this.like,
    required this.audio,
    required this.time,
    required this.createdAt,
  });
}
