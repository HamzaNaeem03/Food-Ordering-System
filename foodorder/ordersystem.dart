import 'dart:io';
import 'user.dart';
import 'eatable.dart';

void main() {
  user_accounts user_data = new user_accounts();

  while (true) {
    print("************");
    print("(1) Login  *");
    print("(2) Signup *");
    print("************\n");

    String selection = stdin.readLineSync().toString();
    if (selection == "1") {
      print("Enter Email: ");
      String login_email = stdin.readLineSync().toString();
      print("Enter Password: ");
      String login_pass = stdin.readLineSync().toString();
      if (user_data.compare_pass(login_email, login_pass)) {
        print("Login Successful");
        List user_selections = [];
        while (true) {
          print("What you Like to buy?");
          print("(F) Food");
          print("(D) Drink");
          String selected_type = stdin.readLineSync().toString();
          Eatables food_list = new Eatables();
          if (selected_type.toUpperCase() == "F") {
            food_list.show_foodlist();
            print("Input Index of item to put in cart");
            while (true) {
              if (user_selections.length > 0) {
                print("Next Item");
              } else {
                print("First Order");
              }
              String index = stdin.readLineSync().toString();
              if (food_list.Foods[index] != null) {
                print("(A) Add in Cart");
                print("(R) Remove From Cart");
                String add_remove = stdin.readLineSync().toString();
                if (add_remove.toUpperCase() == "A") {
                  print("Item Successfully Added In Crate");
                  user_selections.add(food_list.Foods[index]);
                } else if (add_remove.toUpperCase() == "R") {
                  if (user_selections.contains(food_list.Foods[index])) {
                    print("Item Removed From Crate");
                    user_selections.remove(food_list.Foods[index]);
                  } else {
                    print("Item is not in Cart");
                  }
                }
              } else {
                print("Invalid Index try again!");
              }
            }
          } else if (selected_type.toUpperCase() == "D") {
            print("Input Index of item to put in cart");
            food_list.show_drinklist();
          }
        }
      } else {
        print("'Email' or 'Password' is Incorrect");
      }
    } else if (selection == "2") {
      while (true) {
        print("Enter Email: ");
        String signup_email = stdin.readLineSync().toString();
        if (user_data.find_user(signup_email)) {
          print("'Email' is already in used try different 'Email'");
          print("****************");
          print("(R) Retry      *");
          print("(X) Exit Signup*");
          print("****************\n");
          print("Press R to retry and X to back to login page");
          String signup_selection = stdin.readLineSync().toString();
          if (signup_selection.toUpperCase() == "R") {
            continue;
          } else if (signup_selection.toUpperCase() == "X") {
            break;
          }
        }
        print("Enter Password: ");
        String signup_pass = stdin.readLineSync().toString();
        print("Enter Your Address: ");
        String signup_address = stdin.readLineSync().toString();
        print("Sign up Successful");
        User users = new User(signup_email, signup_pass, signup_address);
        user_data.add_account(users);
        break;
      }
    } else {
      print("Wrong Selection try again!");
    }
  }
}
