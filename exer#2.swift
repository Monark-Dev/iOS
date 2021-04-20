func getTallestPerson(dict : [String : Float]) {

  print("\n--------------------\nExercise 2\n----part1----")

  var max : Float = 0.0;
  var name = String();
  for (k,v) in dict {
    print("\(k) mesure \(v)m");
    if (v > max) {
      max = v;
      name = k;
    }
  }

  print("La personne la plus grande est \(name) avec la talle \(max)m");
}

func getTallestPersonOptionelle(dict : [String? : Float?]) {

  print("----part2----")

  var max : Float? = Optional(0.0);
  var name : String? = Optional("");
  for (k,v) in dict {
    if (k != nil && v != nil) {
      print("\(k!) mesure \(v!)m");
      if (v! > max!) {
        max = v;
        name = k;
      }
    }
  }
  print("La personne la plus grande est \(name) avec la talle \(max)m");
}