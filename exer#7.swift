import Foundation

func printCalendar() {
  var dateComponents = DateComponents();
  dateComponents.month = getMonth();
  dateComponents.year = getYear();
  
  let calendar = Calendar.current;
  let dates = calendar.date(from: dateComponents)!;
  let interval = calendar.dateInterval(of: .month, for: dates)!;
  let days = calendar.dateComponents([.day], from: interval.start, to: interval.end).day!;
 

let date = calendar.date(from: dateComponents)! 
print(date)

let dayOfWeek = calendar.component(.weekday, from: date)

print(dayOfWeek)
print(days)
printMonth(firstDay: dayOfWeek - 1, nDays: days)
}

func getMonth() -> Int {
  let prompt = "Inserer le mois (1 - 12)";
  
  var month : Int? = nil;
  while !isMonthGood(val: month) {
    print(prompt)
    month = Int(readLine()!) 
  }
  return month!;
}

func isMonthGood(val : Int?) -> Bool {
  let range = 1...12;
  return val != nil && range.contains(val!);
}

func getYear() -> Int {
  let prompt = "Inserer l'an (1900 - 2100)";
  
  var year : Int? = nil;
  while !isYearGood(val: year) {
    print(prompt)
    year = Int(readLine()!) 
  }
  return year!;
}

func isYearGood(val : Int?) -> Bool {
  let range = 1900...2100;
  return val != nil && range.contains(val!);
}

func printMonth(firstDay : Int, nDays : Int) {
  print("Dim Lun Mar Mer Jeu Ven Sam");
  var dateLine = ""
  for i in 1...nDays+firstDay {
    
    let space = ""
    let next = i <= firstDay ? String(format: "%3d", 0) : String(format: "%3d", i - firstDay);
    // let nextString = String(format: "%)
    print(next, terminator: " ")
    if (i % 7 == 0) {
      print("\n");
    }
  }
}