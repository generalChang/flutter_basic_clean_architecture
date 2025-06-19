class AddTaskParams {
  final String id;
  final String title;
  final String description;
  final bool isDone;

  const AddTaskParams({
    required this.id,
    required this.title,
    required this.description,
    required this.isDone,
  });
}
