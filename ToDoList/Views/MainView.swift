//
//  MainView.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import SwiftUI

struct MainView: View {
  @StateObject var viewModel = MainViewViewModel()
  
  var body: some View {
    if viewModel.isSignIn, !viewModel.currentUserId.isEmpty {
      authView
    } else {
      LoginView()
    }
  }
  
  @ViewBuilder
  var authView: some View {
    TabView {
      ToDoListView(userId: viewModel.currentUserId)
        .tabItem {
          Label("Home", systemImage: "house")
        }
      ProfileView()
        .tabItem {
          Label("Profile", systemImage: "person.circle")
        }
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
