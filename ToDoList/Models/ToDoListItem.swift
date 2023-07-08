//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
  let id: String
  let title: String
  let dueDate: TimeInterval
  let createdAt: TimeInterval
  var isDone: Bool
  
  mutating func setDone(_ state: Bool) {
    isDone = state
  }
}
