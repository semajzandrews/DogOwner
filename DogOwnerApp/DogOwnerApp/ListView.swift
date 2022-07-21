//
//  ListView.swift
//  DogOwnerApp
//
//  Created by Semaj Andrews on 7/20/22.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        NavigationView {
            List(dataManager.dogs, id: \.id) { dog in
                Text(dog.breed)
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                
            }, label: {
                
            }))
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
