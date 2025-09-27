class MessageModel {
  final String id;
  final String roomId;
  final String user;
  final String text;
  final DateTime? createdAt;

  const MessageModel({
    required this.id,
    required this.roomId,
    required this.user,
    required this.text,
    required this.createdAt,
  });
}
