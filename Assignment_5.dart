void main() {
//Assignment 5 In Dart

  List<Map<String, dynamic>> Tasks = [
    {
      "taskName": "Do Assignment 5",
      "isCompleted": false,
      "submissionDate": 29,
    },
    {
      "taskName": "Do Assignment 4",
      "isCompleted": true,
      "submissionDate": 26,
    },
    {
      "taskName": "Do Assignment 3",
      "isCompleted": true,
      "submissionDate": 19,
    },
    {
      "taskName": "Do Assignment 2",
      "isCompleted": false,
      "submissionDate": 12,
    },
    {"taskName": "Do Assignment 1", "isCompleted": true, "submissionDate": 5}
  ];

  List<Map<String, dynamic>> CompletedTask = [];
  List<Map<String, dynamic>> TaskWithsubmission_dates_between_10_20 = [];

  var isCompleted = Tasks.where((element) => element["isCompleted"] == true);
  CompletedTask.addAll(isCompleted);
  CompletedTask.forEach((element) {
    element.update("taskName", (value) => value + " Completed");
  });
  var TaskWithsubmission = Tasks.where((element) =>
      element["submissionDate"] >= 10 && element["submissionDate"] <= 20);

  TaskWithsubmission_dates_between_10_20.addAll(TaskWithsubmission);

  print("===== List OF UnFiltered Tasks =====\n");
  print(Tasks);
  print("\n===== List OF Only Completed Tasks =====\n");
  print(CompletedTask);
  print("\n===== List OF Tasks With Submission Dates Between 10 To 20 =====\n");
  print(TaskWithsubmission_dates_between_10_20);

  // Tasks.forEach((element) {
  //   element.forEach((key, value) {
  //     if (key == "isCompleted" && value == true) {
  //       CompletedTask.add(element));
  //     }
  //     if (key == "submissionDate" && value >= 10 && value <= 20) {
  //       TaskWithsubmission_dates_between_10_20.add(element);
  //     }
  //   });
  //   //print(element);
  // });
  // CompletedTask.forEach((element) {
  //   print(element);
  // });
  // print("========");
  // TaskWithsubmission_dates_between_10_20.forEach((element) {
  //   print(element);
  // });
}
