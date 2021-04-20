func getAllCars(paramCars : [String? : [String? : [Any?]?]?]) {
  print("\n---------------------\nExercise3")

  for (brand,carArr)  in paramCars {
    if brand != nil && carArr != nil {
      print(brand!)
      for (car, modelArr) in carArr! {
        if car != nil {
          print("\t\(car!)")
          for model in modelArr! {
            if model != nil {
              print("\t\t\(model!)")
            }
          }
        }
      }
    }
  }
}
