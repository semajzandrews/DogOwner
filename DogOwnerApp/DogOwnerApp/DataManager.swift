//
//  DataManager.swift
//  DogOwnerApp
//
//  Created by Semaj Andrews on 7/20/22.
//

import SwiftUI
import Firebase

class DataManager: ObservableObject {
    @Published var dogs: [Dog] = []
    
    init(){
        fetchDogs()
    }
    
    func fetchDogs(){
        dogs.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Dogs")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let breed = data["breed"] as? String ?? "1"
                    let id = data["id"] as? String ?? "2"
                    
                    let dog = Dog(id: id, breed: breed)
                    self.dogs.append(dog)
                }
            }
        }
    }
    
    func addDog(dogBreed: String){
        let db = Firestore.firestore()
        let ref = db.collection("Dogs").document(dogBreed)
        ref.setData(["breed": dogBreed, "id": 10]) { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
}
