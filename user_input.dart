import 'dart:io';

void main() {

  while (true) {
    print('Enter your first number:');
    int? num1 = int.tryParse(stdin.readLineSync()!);

    while (num1 == null) {
      print('Enter a first valid number');
      num1 = int.tryParse(stdin.readLineSync()!);
      if (num1 != null) {
        print('$num1 is a valid number');
        break;//the loop will stop if valid number is entered
        }//if condition
        }//while condition num1
        print('Choose an Operator (+, -, *, /)');
        String operator = stdin.readLineSync()!;
        print('Enter your second number:');
        int? num2 = int.tryParse(stdin.readLineSync()!);
        
    while(num2 == null) {
      print('Enter a second valid number');
      num2 = int.tryParse(stdin.readLineSync()!);
      if (num2 != null) {
        break;//the loop will stop if valid number is entered
        }//if condition
        }//while condition num2
            
            int result;
            
            switch (operator) {
              case '+':
              result = num1 + num2;
              print('Result is $result');
              break;
              
              case '-':
              result = num1 - num2;
              print('Result is $result');
              break;
              
              case '*':
              result = num1 * num2;
              print('Result is $result');
              break;
              
              case '/':
              if(num2 == 0) {
                print('cant divide to zero');
                } else {
                  result = num1 ~/ num2;
                  print('result is $result');
                }
                break;
            }
            
            print('Continue? (y, n)');
            String user = stdin.readLineSync()!;
            if (user == 'y') {
              continue;
              } 
              else {
                break; 
                }

  } //while condition
}//main function