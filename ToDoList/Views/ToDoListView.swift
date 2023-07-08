//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import SwiftUI

struct ToDoListView: View {
  @StateObject var viewModel = ToDoListViewViewModel()
  private let userId: String
  init(userId: String) {
    self.userId = userId
  }
  var body: some View {
    NavigationView {
      ZStack {
        BackgroundView()
        VStack {
          
        }
      }
      .navigationTitle("To Do List")
      .toolbar {
        Button {
          viewModel.showingNewItemView = true
        } label: {
          Image(systemName: "plus.circle")
        }
      }
      .sheet(isPresented: $viewModel.showingNewItemView) {
        NewItemView(newItemPresented: $viewModel.showingNewItemView)
          .presentationDragIndicator(.visible)
      }
    }
  }
}

struct ToDoListView_Previews: PreviewProvider {
  static var previews: some View {
    ToDoListView(userId: "")
  }
}
