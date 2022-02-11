void main() {
  //Assignment 1 In Dart

  List<List<String>> Students = [
    ["M.Daniyal", "Ali", "Fahad"],
    ["50", "39", "45"]
  ];
  print("\n====STUDENT RESULTS====\n");
  print("Student Name: " + (Students[0][0]));
  print("Student Marks: " + (Students[1][0]));
  if (Students[1][0] == "50") {
    print("Result: Passed\n");
  } else {
    print("Result: Failed !!!\n");
  }

  print("Student Name: " + (Students[0][1]));
  print("Student Marks: " + (Students[1][1]));
  if (Students[1][1] == "50") {
    print("Result: Passed\n");
  } else {
    print("Result: Failed !!!\n");
  }

  print("Student Name: " + (Students[0][2]));
  print("Student Marks: " + (Students[1][2]));
  if (Students[1][2] == "50") {
    print("Result: Passed\n");
  } else {
    print("Result: Failed !!!\n");
  }
}
