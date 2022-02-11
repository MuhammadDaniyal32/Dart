import 'dart:io';
//Assignment 6 In Dart
//contact book

List<Contact> Contacts = [];
void main() {
  while (true) {
    Menu();
  }
}

void Menu() {
  print("======== Main Menu ========");
  print("Enter 1 to add Contact");
  print("Enter 2 to Update Contact");
  print("Enter 3 to List All Contacts");
  print("Enter 4 to Delete a contact");
  print("Please enter your choice:");

  String choice = stdin.readLineSync()!.trim();
  switch (choice) {
    case "1":
      AddContacts();
      break;
    case "2":
      UpdateContact();
      break;
    case "3":
      ListOfContacts();
      break;
    case "4":
      DeleteContact();
      break;

    default:
      print("Exiting Program....");
      exit(0);
  }
}

AddContacts() {
  print("\nYou Choose To Add Contact.\n");
  String name, email, dob;
  int phone;
  print("Enter Contact Name:");
  name = stdin.readLineSync()!.trim();
  print("Enter Contact Email:");
  email = stdin.readLineSync()!.trim();
  print("Enter Contact Date Of Birth:");
  dob = stdin.readLineSync()!.trim();
  print("Enter Contact Phone Number:");
  phone = int.parse(stdin.readLineSync()!.trim());

  if (name.isNotEmpty &&
      email.isNotEmpty &&
      dob.isNotEmpty &&
      phone != null &&
      email.contains("@")) {
    Contacts.add(Contact(name, email, phone, dob));
    print("Your Contact is Saved");
    backtomenu("AddContacts");
  } else {
    print("Failed to Save Contact! Invalid Entry");
    backtomenu("AddContacts");
  }
}

UpdateContact() {
  print("\nYou Choose To Update Contact.\n");
  print("Enter Index Number To Update Contact:");
  String name, email, dob;
  int phone;
  int index = int.parse(stdin.readLineSync()!.trim());

  print("Update Contact on $index :");

  print("Name ${Contacts[index].Name}");
  print("Enter New Name:");
  name = stdin.readLineSync()!.trim();
  if (name.isNotEmpty) {
    Contacts[index].Name = name;
  }
  print("Email ${Contacts[index].Email}");
  print("Enter New Email:");
  email = stdin.readLineSync()!.trim();
  if (email.isNotEmpty) {
    Contacts[index].Email = email;
  }
  print("Phone Number: ${Contacts[index].Phone}");
  print("Enter New Phone Number:");
  phone = int.parse(stdin.readLineSync()!.trim());
  if (phone != null) {
    Contacts[index].Phone = phone;
  }
  print("Date Of Birth: ${Contacts[index].Dob}");
  print("Enter New Date Of Birth:");
  dob = stdin.readLineSync()!.trim();
  if (dob.isNotEmpty) {
    Contacts[index].Dob = dob;
  }
  print("Your Contact at $index Is Updated...");
  backtomenu("UpdateContact");
}

DeleteContact() {
  print("\nYou Choose To Delete Contact.\n");
  print("Enter Index Number To Delete Contact:");
  int index = int.parse(stdin.readLineSync()!.trim());
  print("Detail of contact at $index :");
  print("\nName:${Contacts[index].Name}");
  print("Phone:${Contacts[index].Phone}");
  print("Email:${Contacts[index].Email}");
  print("Date Of Birth:${Contacts[index].Dob}\n");
  print("Do you want delete this contact(Y/N)....");
  String choice = stdin.readLineSync()!.trim();
  if (choice == "Y") {
    Contacts.removeAt(index);
    print("Contact Deleted!");
  }
  backtomenu("DeleteContact");
}

ListOfContacts() {
  print("\nYou Choose List Of Contacts.\n");
  int index = 0;
  Contacts.forEach((element) {
    print("Index:${index++}");
    print("Name:${element.Name}");
    print("Phone:${element.Phone}");
    print("Email:${element.Email}");
    print("Date Of Birth:${element.Dob}");
    print("\n");
  });
  backtomenu("ListOfContacts");
}

backtomenu(String Currentchoice) {
  print("If You Want To $Currentchoice Enter 1");
  print("If You Want To Go Back to Menu Enter 0");
  String choice = stdin.readLineSync()!.trim();
  switch (choice) {
    case "1":
      if (Currentchoice == "AddContacts") {
        AddContacts();
      } else if (Currentchoice == "UpdateContact") {
        UpdateContact();
      } else if (Currentchoice == "DeleteContact") {
        UpdateContact();
      } else if (Currentchoice == "ListOfContacts") {
        ListOfContacts();
      }
      break;
    case "0":
      Menu();
      break;
    default:
      print("adssssd");
  }
}

class Contact {
  String Name = "";
  String Email = "";
  String Dob = "";
  int Phone = 0;
  Contact(String name, String email, int phone, String dob) {
    this.Dob = dob;
    this.Email = email;
    this.Phone = phone;
    this.Name = name;
  }
}
