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
    
    init(){
        FirebaseApp.configure() 
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
