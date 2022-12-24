import 'dart:math';

class Game {
  final int answer = Random().nextInt(100)+1 ;
  int _totalGuesses = 0;
  Game(){
    print('Answer is $answer');
  }
  int doGuess(int guess) {
    _totalGuesses ++;
    if (guess == answer) {
      return 0;
    } else if (guess > answer) {
      return 1;
    } else {
      return -1;
    }
  }
  int getTotalGuesses(){
    return _totalGuesses;
  }
}
