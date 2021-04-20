func pushSetMoyenne(array : [Int], val : Int) -> ([Int], Float) {
  print("\n---------------------\nExercise 4")
  
  var sum = 0
  
  var newArray = array
  newArray.append(val)
  newArray[0] = 0

  for i in newArray {
    sum  += i
  }

  let moyenne = Float(sum) / Float(newArray.count)

  return (newArray, moyenne)
}



