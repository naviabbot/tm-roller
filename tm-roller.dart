// TYPE-MOON Circuit Roller
// This program rolls a few dice and outputs the rank and quantity of Nasuverse-style (Garden of Sinners/Tsukihime/Fate) magic circuits for use with magical characters who want more in-depth information when creating magical RP characters.


import 'dart:math';

String quality (int roll) {
  /// This function takes in a roll from MAIN and compares it to a class.
  String qual;
  if (roll == 1) {
    qual = "EX-Class";
  } else if (roll > 1 && roll <= 5) {
    qual = "A-Class";
  } else if (roll > 5 && roll <= 10) {
    qual = "B-Class";
  } else if (roll > 10 && roll <= 15) {
    qual = "C-Class";
  } else {
    qual = "D-Class";
  }
  return qual;
}

quantity (String quality) {
  /// This function takes in a class from Function 'quality' and does dice magic to roll the number of circuits
  var die2 = Random();
  int pwr;
  switch (quality){
    case 'EX-Class':
      pwr = die2.nextInt(100) + die2.nextInt(100) + die2.nextInt(100) + 103;
      return pwr;
    case 'A-Class':
      pwr = die2.nextInt(100) + die2.nextInt(100) + 102;
      return pwr;
    case 'B-Class':
      pwr = die2.nextInt(100) + 101;
      return pwr;
    case 'C-Class':
      pwr = die2.nextInt(75) + 31;
      return pwr;
    case 'D-Class':
      pwr = die2.nextInt(50) + 21;
      return pwr;
    default:
      return 'Data Not Found';
  }
}

void main () {
  var die1 = Random();
  var roll = die1.nextInt(19) + 1;
  String clazz = quality(roll);
  var numbuhz = quantity(clazz);
  print("There are $numbuhz $clazz circuits.");
}
