//
//  ProfileView.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import SwiftUI

struct ProfileView: View {
  @StateObject var viewModel = ProfileViewViewModel()
  var body: some View {
    NavigationView {
      ZStack {
        BackgroundView()
        VStack {
          
        }
      }
      .navigationTitle("Profile")
    }
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
