import 'dart:io';

import 'package:randomnumber/hello.dart';

import 'game.dart';
//var count = 0 ;
//int? guess;

void main() {
  var game = Game();
  var isCollect = 0 ;
  do{
    stdout.write('guess the number between 1 and 100 :');

    var input = stdin.readLineSync();

    if(input == null){
      return;
    }
    var guess = int.tryParse(input);

    if(guess == null) {
      continue;
    }
    count +=1 ;
    isCollect = game.doGuess(guess);
    if (isCollect == 0){
      print('$guess is COLLECT total guesses: ${game.getTotalGuesses()}');
    }else if(isCollect == 1){
      print('$guess TOOHIGH');
    }else {
      print('$guess is TOOLOW');
    }

  } while (isCollect != 0);
  }