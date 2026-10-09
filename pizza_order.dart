import 'dart:io';

void main() {
  bool continueOrder = true;

  print("=== Pizza Ordering System ===");
  print("Small  = USD 5");
  print("Medium = USD 7");
  print("Large  = USD 10");

  while (continueOrder) {
    stdout.write("\nEnter pizza size (S/M/L): ");
    String size = stdin.readLineSync()!.toUpperCase();

    stdout.write("Enter quantity: ");
    int quantity = int.parse(stdin.readLineSync()!);

    int price = 0;

    switch (size) {
      case 'S':
        price = 5;
        break;
      case 'M':
        price = 7;
        break;
      case 'L':
        price = 10;
        break;
      default:
        print("Invalid pizza size!");
        continue;
    }

    int total = price * quantity;

    print("Total Payment: USD $total");

    stdout.write("Order again? (Y/N): ");
    String answer = stdin.readLineSync()!.toUpperCase();

    if (answer != 'Y') {
      continueOrder = false;
    }
  }

  print("Thank you!");
}