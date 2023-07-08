//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
  @Published var email = ""
  @Published var password = ""
  @Published var errorMessage = ""
  @Published var showAlert = false
  
  init() {}
  
  func login() {
    
    guard validate() else {
      return
    }
    
    Auth.auth().signIn(withEmail: email, password: password)
  }
  
  private func validate() -> Bool {
    errorMessage = ""
    guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
          !password.trimmingCharacters(in: .whitespaces).isEmpty else {
      errorMessage = "Please fill in all fields"
      showAlert = true
      return false
    }
    
    guard email.contains("@") && email.contains(".") else {
      errorMessage = "Please enter a valid email"
      showAlert = true
      return false
    }
    
    return true
  }
}
