//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import Foundation

class RegisterViewViewModel: ObservableObject {
  @Published var name = ""
  @Published var email = ""
  @Published var password = ""
  
  init() {}
  
}
