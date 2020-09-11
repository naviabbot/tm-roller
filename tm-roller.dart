// TYPE-MOON Circuit Roller
// This program rolls a few dice and outputs the rank and quantity of Nasuverse-style (Garden of Sinners/Tsukihime/Fate) magic circuits for use with magical characters who want more in-depth information when creating magical RP characters.


import 'dart:math';

String quality (int roll) {
  /// This function takes in a roll from MAIN and compares it to a class.
  String qual;
  if (roll >=1 && roll <= 4) {
    qual = "A-Rank (50)";
  } else if (roll > 4 && roll <= 8) {
    qual = "B-Rank (40)";
  } else if (roll > 9 && roll <= 12) {
    qual = "C-Rank (30)";
  } else if (roll > 12 && roll <= 14){
    qual = "D-Rank (20)";
  } else {
    qual = "E-Rank (10)";
  }
  return qual;
}

quantity (String quality) {
  /// This function takes in a class from Function 'quality' and does dice magic to roll the number of circuits.
  String mod;
  var roll2 = Random();
  int pwr = roll2.nextInt(4) + 1;
  switch (pwr){
    case 1:
      mod = "+";
      return mod;
    case 2:
      mod = "++";
      return mod;
    case 3:
      mod = "+++";
      return mod;
    default:
      mod = "(No Modifier)";
      return mod;
  }
}

void main () {
  print("Type-Moon Circuit Roller. Modifiers multiply the default number by the following - A: 5, B: 4, C: 3, D: 2, E: 1.");
  var die1 = Random();
  var roll = die1.nextInt(19) + 1;
  String clazz = quality(roll);
  var numbuhz = quantity(clazz);
  print("$clazz $numbuhz circuits.");
}
