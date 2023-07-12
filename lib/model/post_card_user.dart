class PostCardUser {
  final String title;
  final String location;
  final String message;
  final String categoryList;
  final int messageCount;
  final bool urgently;

  PostCardUser({
    required this.title,
    required this.location,
    required this.message,
    required this.categoryList,
    required this.messageCount,
    required this.urgently,
  });
}
