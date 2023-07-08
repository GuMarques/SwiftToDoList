//
//  User.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import Foundation

struct User: Codable {
  let id: String
  let name: String
  let email: String
  let createdAt: TimeInterval
}
