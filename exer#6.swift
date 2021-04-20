let prompts = [
    "-------------\nPremier entier?",
    "-------------\nSecond entier?"
]

let notifications = [
  0 : ["Le premier entier n'est pas un entier", "Le premier paramètre n'est pas un entier pair"],
  1 : ["Le second entier n'est pas un entier", "Le second paramètre n'est pas un entier pair", "Le second paramètre est plus petit que le premier paramètre"]
]

var nums : [Int : Int?] = [0 : nil, 1 : nil]


func printInputIfEven() {

  print("\n---------------------\nExercise 6")

  getInput();
  var result = "";
  for (k,v) in nums {
    result += "\(v!) ";
  }
  print(result);
}

func isNumGood(value : Int?, iter : Int) -> Bool {
  var isGood = true;
  
  if (value == nil) {
    print(notifications[iter]![0]);
    isGood = false;
  } else if (value! == 0 || value! % 2 != 0) {
    print(notifications[iter]![1]);
    isGood = false;
  } else if (iter == 1) {
    if let firstNum = nums[iter - 1] {
      if (value! <= firstNum!) {
        print(notifications[iter]![2]);
        isGood = false;
      }
    }
  }
  return isGood;
}

func getInput() {
  for i in 0..<prompts.count {
    while !isNumGood(value: nums[i]!, iter: i) {
      print(prompts[i]);
      nums[i] = Int(readLine()!);
    }
  }
}