class Task {
  final String name;
  bool isDone = false;
  Task({required this.name});

  void toggle() {
    isDone = !isDone;
  }
}
