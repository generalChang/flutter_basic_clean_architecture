class AddTaskParams {
  final String title;
  final String description;
  final bool isDone;

  const AddTaskParams({
    required this.title,
    required this.description,
    required this.isDone,
  });
}
