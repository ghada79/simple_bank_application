import 'dart:io';

void main(List<String> arguments) {
  double balance = 1000.0;
  while (true) {
    print('1-Check Balance ');
    print('2- Deposit Money');
    print('3- Withdraw Money');
    print('4-Exit ');

    print('please enter your choice');
    String? input = stdin.readLineSync();
    int? choice;
    if (input != null && int.tryParse(input) != null) {
      choice = int.parse(input);
    } else {
      print('Invalid input. Please enter a number.');
      continue;
    }
    switch (choice) {
      case 1:
        print('Your balance is \$${balance.toStringAsFixed(2)}');
        break;
      case 2:
        print(' enter your deposit');
        double? deposit = double.tryParse(stdin.readLineSync()!);

        if (deposit != null && deposit > 0) {
          balance += deposit;
          print(
              'operation of deposit is successful and  your balance is \$${balance.toStringAsFixed(2)}');
        }
        break;
      case 3:
        print('enter your Withdraw');
        double? withdraw = double.tryParse(stdin.readLineSync()!);
        if (withdraw != null && withdraw > 0 && withdraw <= balance) {
          balance -= withdraw;
          print(
              'operation of withdraw is successful and  your balance is \$${balance.toStringAsFixed(2)}');
        }
        break;
      case 4:
        print('Exiting!\n Thank you!');
        return;

      default:
        print('Invalid choice. Please try again.');
    }
  }
}
