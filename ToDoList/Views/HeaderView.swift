//
//  HeaderView.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import SwiftUI

struct HeaderView: View {
  let title: String
  let subtitle: String
    var body: some View {
      Text(title)
        .font(.system(size: 50))
        .bold()
      Text(subtitle)
        .font(.system(size: 30))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle")
    }
}
