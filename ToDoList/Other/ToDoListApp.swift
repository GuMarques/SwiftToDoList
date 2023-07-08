//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
  init() {
    FirebaseApp.configure()
  }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
