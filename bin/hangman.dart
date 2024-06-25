import 'dart:io';

import 'package:hangman/hangman.dart' as hangman;

void main(List<String> arguments) {
  hangman.gameAnnouncement();
  String codeword = 'codingcleverly';
  List<String> answer = List.filled(codeword.length, '_');
  int misses = 0;
  String incorrect = '';
  bool guess = false;
  String letter;

  while (answer != codeword && misses < 7) {
    hangman.displayMisses(misses);
    hangman.displayStatus(incorrect, answer);
    print('');
    print('Enter your guess: ');
    letter = stdin.readLineSync()!;

    for (int i = 0; i < codeword.length; i++) {
      if (letter == codeword[i]) {
        answer[i] = letter;
        guess = true;
      }
    }
    if (guess) {
      print('Correct!');
    } else {
      print('Incorrect! Another portion of the person has been drawn');
      incorrect += letter;
      misses++;
    }
    guess = false;
  }
  hangman.endGame(answer, codeword);
}
