import 'dart:math';

String generatePassword(int length) {
  const characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

  String password ="";
  Random random = Random();


  for(int i = 0; i < length; i++) {
    int index = random.nextInt(characters.length);
    password += characters[index];
  }
  return password;
}

void main() {

  String password = generatePassword(20);
  print('Generated Password: $password');

}