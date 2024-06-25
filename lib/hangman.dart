//define game to the user
import 'dart:io';

void gameAnnouncement() {
  print('-----------------------');
  print('Hangman: The Game');
  print('-----------------------');
  print('Save you friend by guessing the letters of the word');
}

void displayMisses(int misses) {
  if (misses == 0) {
    print('  +---+ ');
    print('  |   | ');
    print('      | ');
    print('      | ');
    print('      | ');
    print('      | ');
    print('========= ');
  } else if (misses == 1) {
    print('  +---+ ');
    print('  |   | ');
    print('  O   | ');
    print('      | ');
    print('      | ');
    print('      | ');
    print('========= ');
  } else if (misses == 2) {
    print('  +---+ ');
    print('  |   | ');
    print('  O   | ');
    print('  |   | ');
    print('      | ');
    print('      | ');
    print('========= ');
  } else if (misses == 3) {
    print('  +---+ ');
    print('  |   | ');
    print('  O   | ');
    print(' /|   | ');
    print('      | ');
    print('      | ');
    print('========= ');
  } else if (misses == 4) {
    print('  +---+ ');
    print('  |   | ');
    print('  O   | ');
    print(' /|\\  | ');
    print('      | ');
    print('      | ');
    print('========= ');
  } else if (misses == 5) {
    print('  +---+ ');
    print('  |   | ');
    print('  O   | ');
    print(' /|\\  | ');
    print(' /    | ');
    print('      | ');
    print('========= ');
  } else if (misses == 6) {
    print('  +---+ ');
    print('  |   | ');
    print('  O   | ');
    print(' /|\\  | ');
    print(' / \\  | ');
    print('      | ');
    print('========= ');
  }
}

void displayStatus(String incorrect, List<String> answer) {
  print('Incorrect Guesses: ');
  for (int i = 0; i < incorrect.length; i++) {
    stdout.write(incorrect[i]);
  }
  print('');
  print('Codeword: ');
  for (int i = 0; i < answer.length; i++) {
    stdout.write(answer[i]);
    
  }
}

void endGame(List<String> answers, String codeWord) {
  //join function convert list of string to single string 
  //because when compare a list of string with single string the condation not equal true
  String guessedWord = answers.join();
  if (guessedWord == codeWord) {
    print('Great! you saved the person from being hanged');
  } else {
    print('Oh No! the man is hanged');
  }
}

