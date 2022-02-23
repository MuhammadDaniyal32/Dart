import 'dart:io';
//Assignment 8 In Dart
//E-Commerce App

List<Product> products = [];
List<Product> cart = [];
void main(List<String> args) {
  products = [
    usb("Usb", 4, 1000),
    Iphone("Iphone 12 Ultra Pro Max", 5, 200000)
  ];
  shop_product();
}

void shop_product() {
  print("Welcome To Daniyal E-Commerce App");
  int i = 0;
  for (var product in products) {
    print("Press: ${++i} to select ${product.p_name} ");
  }
  var choice = stdin.readLineSync()!.trim();
  if (choice.isNotEmpty) {
    addtocart(choice);
  } else {
    shop_product();
  }
}

void addtocart(String choice) {
  print("Enter Quantity Of Product:");
  var quantity = int.parse(stdin.readLineSync()!.trim());
  var index;
  var selected_index = 0;
  switch (choice) {
    case "1":
      index = 0;
      break;
    case "2":
      index = 1;
      break;
    default:
      index = null;
      print("Invalid Choice !");
      shop_product();
  }

  var product = products[index];
  String pname = "";
  int price = 0;
  if (products[index] is StorageOptions) {
    int j = 0;
    product as Iphone;
    for (var option in product.storage_in_gb) {
      print("Press ${++j} for $option GB");
    }
    print("Press 0 to Buy Base Variant For ${product.p_price}");
    var optionchoice = stdin.readLineSync()!.trim();
    if (optionchoice == "1") {
      print("You Selected 256GB variant");
      pname = "${product.p_name}  With  ${product.storage_in_gb[0]}GB";
      price = 250000;
    } else if (optionchoice == "2") {
      print("You Selected 128GB variant");
      pname = "${product.p_name}  With  ${product.storage_in_gb[1]}GB";
      price = 220000;
    } else if (optionchoice == "0") {
      print("You Selected Base variant");
    } else {
      print("Invalid Choice !");
    }
  }
  if (quantity == null) {
    print("Please Enter Quantity Of Product!");
  } else if (quantity < products[index].p_stock) {
    List<Product> selectedProduct = [product];
    if (pname.isNotEmpty && price != 0) {
      selectedProduct[selected_index].p_name = pname;
      selectedProduct[selected_index].p_price = price;
    }
    selectedProduct[selected_index].p_stock = quantity;
    cart.add(selectedProduct[selected_index]);
    selected_index++;
    print("${product.p_name} Added To Your Cart");
    print("If You Want TO Checkout Enter 1 Or Continue Shopping Enter 0");
    var choice = stdin.readLineSync()!.trim();
    if (choice == "1") {
      order(quantity);
    } else if (choice == "0") {
      shop_product();
    }
  } else {
    print("We Dont Have Stock Of This ${products[index].p_name} !");
    shop_product();
  }
}

void order(int quantity) {
  String name, email, address;
  int phone;
  print("Enter Your Name:");
  name = stdin.readLineSync()!.trim();
  print("Enter Your Email:");
  email = stdin.readLineSync()!.trim();
  print("Enter Your Address:");
  address = stdin.readLineSync()!.trim();
  print("Enter Your Phone Number:");
  phone = int.parse(stdin.readLineSync()!.trim());

  if (name.isNotEmpty &&
      email.isNotEmpty &&
      phone != null &&
      email.contains("@") &&
      address.isNotEmpty) {
    print("====Your Order====");
    int price = 0;
    cart.forEach((element) {
      print("${element.p_stock}X ${element.p_name} : Rs ${element.p_price}");
      price = element.p_price * quantity;
    });
    print("================");
    print("Total Amount:${price}\n");
    print("Your Order Is Sent To $address");
  } else {
    print("Invalid Entry!!!");
  }
}

abstract class Product {
  var p_name;
  var p_stock;
  var p_price;
  Product(var name, var stock, var price) {
    this.p_name = name;
    this.p_stock = stock;
    this.p_price = price;
  }
}

mixin StorageOptions {
  List<String> storage_in_gb = [];
}

class usb extends Product {
  usb(var name, var stock, var price) : super(name, stock, price);
}

class Iphone extends Product with StorageOptions {
  Iphone(var name, var stock, var price) : super(name, stock, price);
  @override
  List<String> get storage_in_gb => ["256", "128"];
}
