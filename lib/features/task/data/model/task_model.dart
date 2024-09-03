class Task {
  final String id;
  final String time;
  final String text;
  final String date;
  final bool isComplete;

  Task({
    required this.id,
    required this.time,
    required this.text,
    required this.date,
    required this.isComplete,
  });

  // copyWith method
  Task copyWith({
    String? id,
    String? time,
    String? text,
    String? date,
    bool? isComplete,
  }) {
    return Task(
      id: id ?? this.id,
      time: time ?? this.time,
      text: text ?? this.text,
      date: date ?? this.date,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  @override
  String toString() {
    return 'Task(id: $id, time: $time, text: $text, date: $date, isComplete: $isComplete)';
  }
}
