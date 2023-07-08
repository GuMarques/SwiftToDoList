//
//  BackgroundView.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import SwiftUI

struct BackgroundView: View {
  var body: some View {
    LinearGradient(
      colors: [Color("BackgroundInit"), Color("BackgroundEnd")],
      startPoint: .topLeading,
      endPoint: .bottomTrailing
    ).ignoresSafeArea()
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView()
  }
}
