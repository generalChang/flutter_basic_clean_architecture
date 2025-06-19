class UpdateTaskParams {
  final String id;
  final String title;
  final String description;
  final bool isDone;

  const UpdateTaskParams({
    required this.id,
    required this.title,
    required this.description,
    required this.isDone,
  });
}
