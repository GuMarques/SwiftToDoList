//
//  RegisterView.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import SwiftUI

struct RegisterView: View {
  @State var email = ""
  @State var password = ""
  @State var name = ""
  var body: some View {
    ZStack{
      BackgroundView()
      VStack{
        HeaderView(title: "", subtitle: "Start organizing todos ")
        Form {
          TextField("Name", text: $name)
            .textInputAutocapitalization(.words)
            .autocorrectionDisabled()
          TextField("Email Address", text: $email)
            .keyboardType(.emailAddress)
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
          SecureField("Password", text: $password)
          Button {
          } label: {
            Text("Create Account")
              .bold()
              .frame(maxWidth: .infinity, alignment: .center)
          }
        }
        .scrollContentBackground(.hidden)
      }
      .padding(.top)
    }
  }
}

struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
  }
}
