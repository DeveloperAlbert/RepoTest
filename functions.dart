import 'dart:io';

windowCardPlus(double num1, double num2) {
  return num1 + num2;
}

windowCardMinus(double num1, double num2) {
  return num1 - num2;
}

windowCardMultiply(double num1, double num2) {
  return num1 * num2;
}

windowCardDivision(double num1, double num2) {
  if (num2 == 0) {
    print('Cannot divide by zero');
    return;
  }
  return num1 / num2;
}

/* double? */ calculate(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
    return windowCardPlus(num1, num2);

    case '-':
    return windowCardMinus(num1, num2);

    case '*':
    return windowCardMultiply(num1, num2);

    case '/':
    return windowCardDivision(num1, num2);
    default:
    print('Invalid operator');
  }

}

void main() {
  
  while (true) {

    print('Enter a first number:');
    double num1 = double.parse(stdin.readLineSync()!);
    print('first number entered is: $num1\n');

    print('Choose an Operator(+, -, *, /)');
    String operator = stdin.readLineSync()!;
    print('you chose $operator as an operator\n');

    print('Enter a second number:');
    double num2 = double.parse(stdin.readLineSync()!);
    print('second number entered is $num2\n');

    var result = calculate(num1, num2, operator);
    print('Result is $result\n');

    print('Continue? (y, n)');
    String user = stdin.readLineSync()!;
    if (user == 'y') {
      continue;
    } else if (user == 'n') {
      break;
    } 
    else if (user == String){
      break;
    }

   /* switch (user) {
    case 'y':
    continue;

    case 'n':
    break;

    default:
    print('Enter a valid letter');
   } */
  }
  
}

