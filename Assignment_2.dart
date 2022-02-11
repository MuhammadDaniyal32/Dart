void main() {
  //Assignment 2 In Dart

  List<Map<String, String>> UserReviews = [
    {
      "Review_Id": "1",
      "User_Id": "001",
      "Product_Id": "567",
      "Review": "Good Product...",
      "Rating": "4.5",
      "Review_date&time": "12/01/2022 6:43"
    },
    {
      "Review_Id": "2",
      "User_Id": "014",
      "Product_Id": "341",
      "Review": "Nice",
      "Rating": "2.2",
      "Review_date&time": "22/09/2021 4:53"
    },
    {
      "Review_Id": "3",
      "User_Id": "021",
      "Product_Id": "341",
      "Review": "Worst Product!!!",
      "Rating": "0.5",
      "Review_date&time": "02/01/2021 1:43"
    },
    {
      "Review_Id": "4",
      "User_Id": "101",
      "Product_Id": "291",
      "Review": "Amazing Product",
      "Rating": "5.0",
      "Review_date&time": "02/01/2022 1:43"
    }
  ];
  print("\n======User Reviews For Products Data Structure======\n");
  UserReviews.forEach((element) {
    element.forEach((key, value) {
      print(key + (" : ") + value + "\n");
    });
  });
}
