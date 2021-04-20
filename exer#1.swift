func pushSetMoyenne() -> [Int] {
  print("\n---------------------\nExercise 1")
  
  var sum = 0
  
  var newArray = notesDeLaClasse
  newArray.append(13)
  newArray[0] = 0

  for i in newArray {
    sum  += i
  }

  let moyenne = Float(sum) / Float(newArray.count)

  print("La moyenne de ces notes \(newArray) est \(moyenne)")

  return newArray
}