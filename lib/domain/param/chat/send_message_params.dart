class SendMessageParams {
  final String roomId;
  final String text;
  final String user;

  const SendMessageParams({
    this.roomId = '',
    this.text = '',
    this.user = '',
  });
}
