func printInput() {

  print("\n---------------------\nExercise 5")

  let text = "Text?";
  let inpNum = "Nombre de répétitions?";

  var inpText = String();
  var nRep : Int? = nil;

  while (inpText == nil || inpText.count == 0) {
    print(text);
    inpText = readLine()!;
  }

  while (nRep == nil) {
    print(inpNum);
    nRep = Int(readLine()!)
  }

  for i in 0..<nRep! {
    print(inpText);
  }
}