import 'dart:io';
import 'dart:math';
var count = 0 ;
void main() {
  var r = Random();
  var ans = r.nextInt(100)+1;
  int? guess;
  do {
    stdout.write('Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    if (input == null) {
      print('Error, input is NULL');
    }
    guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }
    count += 1;

    if (guess == ans) {
      print('Collect! The answer is $ans total guesses : $count ');
    } else if (guess > ans) {
      print('$input is TOO HIGH');
    } else {
      print('$input is TOO LOW');
    }

  }while(guess != ans);
  }
