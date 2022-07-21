//
//  DogOwnerAppApp.swift
//  DogOwnerApp
//
//  Created by Semaj Andrews on 7/20/22.
//

import SwiftUI
import Firebase

@main
struct DogOwnerAppApp: App {
    
    @StateObject var dataManager = DataManager()
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(dataManager)
        }
    }
}
