//
//  NewDogView.swift
//  DogOwnerApp
//
//  Created by Semaj Andrews on 7/21/22.
//

import SwiftUI

struct NewDogView: View {
    
    @EnvironmentObject var dataManager: DataManager
    @State private var newDog = ""
    
    var body: some View {
        VStack {
            TextField("Dog", text: $newDog)
            
            Button {
                // MARK: ADD A DOG
                dataManager.addDog(dogBreed: newDog)
            } label: {
                Text("Save")
            }
        }
        .padding()
    }
}

struct NewDogView_Previews: PreviewProvider {
    static var previews: some View {
        NewDogView()
    }
}
