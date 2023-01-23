class ToDoListModel {
  List<String>? studentList;

  ToDoListModel({
    this.studentList = const [],
  });

  factory ToDoListModel.fromJson(Map<String, dynamic> json) {
    return ToDoListModel(
      studentList: json["data"],
    );
  }
}
