var notesDeLaClasse : [Int] = [18, 4, 14, 15, 17, 15, 9, 20, 19, 11, 12, 14];

let personnes : [String: Float] = [
  "Celeste" : 1.73,
  "Marie" : 1.81,
  "Ambroise" : 1.71,
  "Iris" : 1.64,
  "Jean" : 1.78
];

let personnes_2 : [String?: Float?] = [
  "Celeste" : 1.73,
  "Marie" : 1.81,
  "Ambroise" : 1.71,
  "Iris" : 1.64,
  "Jean" : 1.78
];



let cars : [String? : [String? : [Any?]?]?] = [
  "Honda" : ["Civic" : [2002, 2010, 2012], "Accord" : [], "CRV" : [], "HRV" : []],
  "Ford" : ["Taurus" : [], "Explorer" : [], "Expedition" : [], "F150" : []],
  "Toyota" : ["Camry" : [], "Prius" : ["V", "C"], "Rav4" : [], "Avalon" : []]
]



// Call Ex 1
notesDeLaClasse = pushSetMoyenne();

// Call Ex 2
getTallestPerson(dict: personnes);
getTallestPersonOptionelle(dict: personnes_2);

// Call Ex 3
getAllCars(paramCars: cars);

// Call Ex 4
let (notes, moy) = pushSetMoyenne(array: notesDeLaClasse, val: 26);
print("La moyenne de ces notes \(notes) est \(moy)")

// Call Ex 5
printInput()

// Call Ex 6
printInputIfEven()

// Call Ex 7
printCalendar()
