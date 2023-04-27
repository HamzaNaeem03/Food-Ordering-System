import 'dart:html';
import 'dart:io';
import 'user.dart';
import 'eatable.dart';
import 'dart:async';

void main() async {
  stdout.write('\x1B[2J\x1B[0;0H');
  user_accounts user_data = new user_accounts();

  while (true) {
    print("************");
    print("(1) Login  *");
    print("(2) Signup *");
    print("************\n");
    stdout.write("Input 1 for Login & 2 for Sign up: ");
    String selection = stdin.readLineSync().toString();
    if (selection == "1") {
      stdout.write('\x1B[2J\x1B[0;0H');
      print("Enter Email & Username to login!");
      stdout.write("Enter Email: ");
      String login_email = stdin.readLineSync().toString();
      stdout.write("Enter Password: ");
      String login_pass = stdin.readLineSync().toString();
      if (user_data.compare_pass(login_email, login_pass)) {
        stdout.write('\x1B[2J\x1B[0;0H');
        stdout.write('\x1b[34mLogin Successful\x1b[0m\n');
        Map<String, int> user_selections = {};
        while (true) {
          print("What you Like to buy?");
          print("(F) Food");
          print("(D) Drink");
          print("(C) Confirm Order");
          print("(X) sign out");
          String selected_type = stdin.readLineSync().toString();
          Eatables food_list = new Eatables();
          if (selected_type.toUpperCase() == "F") {
            while (true) {
              stdout.write('\x1B[2J\x1B[0;0H');
              food_list.show_foodlist();
              print("Input Index of item to put in cart");
              print("Input M to go back to Categories: \n");
              print(user_selections);
              print("");
              if (user_selections.length > 0) {
                stdout.write("Next Item: ");
              } else {
                stdout.write("First Iems: ");
              }
              String index = stdin.readLineSync().toString();
              print("");
              if (index == "M") {
                stdout.write('\x1B[2J\x1B[0;0H');
                break;
              }
              if (food_list.Foods[index] != null) {
                print("(A) Add in Cart");
                print("(R) Remove From Cart");
                String add_remove = stdin.readLineSync().toString();
                if (add_remove.toUpperCase() == "A") {
                  stdout.write(
                      '\x1b[34mItem Successfully Added In Crate\x1b[0m\n');
                  if (user_selections[food_list.Foods[index].toString()] !=
                      null) {
                    user_selections[food_list.Foods[index].toString()] =
                        user_selections[food_list.Foods[index].toString()]! + 1;
                  } else {
                    user_selections[food_list.Foods[index].toString()] = 1;
                  }
                } else if (add_remove.toUpperCase() == "R") {
                  if (user_selections[food_list.Foods[index].toString()] !=
                      null) {
                    print("Item Removed From Crate");
                    user_selections.remove(food_list.Foods[index].toString());
                  } else {
                    print("Item is not in Cart");
                  }
                }
              }
            }
          } else if (selected_type.toUpperCase() == "D") {
            while (true) {
              stdout.write('\x1B[2J\x1B[0;0H');
              food_list.show_drinklist();
              print("Input Index of item to put in cart");
              print("Input M to go back to Categories: \n");
              print(user_selections);
              print("");
              if (user_selections.length > 0) {
                stdout.write("Next Item: ");
              } else {
                stdout.write("First Iems: ");
              }
              String index = stdin.readLineSync().toString();
              if (index == "M") {
                stdout.write('\x1B[2J\x1B[0;0H');
                break;
              }
              if (food_list.Drinks[index] != null) {
                print("(A) Add in Cart");
                print("(R) Remove From Cart");
                String add_remove = stdin.readLineSync().toString();
                if (add_remove.toUpperCase() == "A") {
                  stdout.write(
                      '\x1b[34mItem Successfully Added In Crate\x1b[0m\n');
                  if (user_selections[food_list.Drinks[index].toString()] !=
                      null) {
                    user_selections[food_list.Drinks[index].toString()] =
                        user_selections[food_list.Drinks[index].toString()]! +
                            1;
                  } else {
                    user_selections[food_list.Drinks[index].toString()] = 1;
                  }
                } else if (add_remove.toUpperCase() == "R") {
                  if (user_selections[food_list.Drinks[index].toString()] !=
                      null) {
                    print("Item Removed From Crate");
                    user_selections.remove(food_list.Drinks[index].toString());
                  } else {
                    print("Item is not in Cart");
                  }
                }
              }
            }
          } else if (selected_type.toUpperCase() == "C") {
            if (user_selections.length > 0) {
              int total = 0;
              print("************");
              print("*Your Order*");
              print("************");
              print("*************************************************");
              for (var entry in user_selections.entries) {
                print(
                    '${entry.key} x${entry.value} : ${food_list.prices[entry.key]! * entry.value}');
                total = total + food_list.prices[entry.key]! * entry.value;
              }

              print("\nAddress : ${user_data.findaddress(login_email)}");
              print("_________________________________________________");
              print("Total : ${total}");
              print("*************************************************");
              print("(C) confirm Order");
              print("(X) Decline Order\n");
              stdout.write("Select C or X: ");
              String order_selection = stdin.readLineSync().toString();
              if (order_selection.toUpperCase() == "C") {
                stdout.write('\x1B[2J\x1B[0;0H');
                print("Thankyou For Purchasing from our App");
                await Future.delayed(Duration(seconds: 2));
                stdout.write('\x1B[2J\x1B[0;0H');
              } else if (order_selection.toUpperCase() == "X") {
                stdout.write('\x1B[2J\x1B[0;0H');
                stdout.write('\x1b[31mYour Order Cancelled!\x1b[0m\n');

                user_selections.clear();

                await Future.delayed(Duration(seconds: 2));
                stdout.write('\x1B[2J\x1B[0;0H');
              }
            } else {
              stdout.write('\x1B[2J\x1B[0;0H');
              print("You Have Selected Nothing");
            }
          } else if (selected_type.toUpperCase() == "X") {
            stdout.write('\x1B[2J\x1B[0;0H');
            break;
          } else {
            stdout.write('\x1B[2J\x1B[0;0H');
            stdout.write('\x1b[31mInvalid Index try again!\x1b[0m\n');
          }
        }
      } else {
        stdout.write('\x1B[2J\x1B[0;0H');
        stdout.write("\x1b[31m'Email' or 'Password' is Incorrect\n\x1b[0m\n");
      }
    } else if (selection == "2") {
      while (true) {
        stdout.write('\x1B[2J\x1B[0;0H');
        print("Enter Email, Password & Address to signup!");
        stdout.write("Enter Email: ");
        String signup_email = stdin.readLineSync().toString();
        if (user_data.find_user(signup_email)) {
          stdout.write(
              "\x1b[31m'Email' is already in used try different 'Email'\x1b[0m\n");
          print("****************");
          print("(R) Retry      *");
          print("(X) Exit Signup*");
          print("****************\n");
          stdout.write("Press R to retry and X to back to login page: ");
          String signup_selection = stdin.readLineSync().toString();
          if (signup_selection.toUpperCase() == "R") {
            continue;
          } else if (signup_selection.toUpperCase() == "X") {
            break;
          }
        }
        stdout.write("Enter Password: ");
        String signup_pass = stdin.readLineSync().toString();
        stdout.write("Enter Your Address: ");
        String signup_address = stdin.readLineSync().toString();
        stdout.write('\x1B[2J\x1B[0;0H');
        stdout.write('\x1b[34mSign up Successful\x1b[0m\n');
        User users = new User(signup_email, signup_pass, signup_address);
        user_data.add_account(users);
        break;
      }
    } else {
      stdout.write('\x1B[2J\x1B[0;0H');

      print("Wrong Selection try again!");
    }
  }
}
