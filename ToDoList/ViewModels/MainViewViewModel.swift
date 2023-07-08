//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import Foundation
import FirebaseAuth
class MainViewViewModel: ObservableObject {
  @Published var currentUserId: String = ""
  private var handler: AuthStateDidChangeListenerHandle?
  
  init() {
    self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
      DispatchQueue.main.async {
        self?.currentUserId = user?.uid ?? ""
      }
    }
  }
  
  public var isSignIn: Bool {
    return Auth.auth().currentUser != nil
  }
}
