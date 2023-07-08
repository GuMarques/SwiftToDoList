//
//  RegisterView.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import SwiftUI

struct RegisterView: View {
  @StateObject var viewModel = RegisterViewViewModel()
  
  var body: some View {
    ZStack{
      BackgroundView()
      VStack{
        HeaderView(title: "", subtitle: "Start organizing todos ")
        Form {
          TextField("Name", text: $viewModel.name)
            .textInputAutocapitalization(.words)
            .autocorrectionDisabled()
          TextField("Email Address", text: $viewModel.email)
            .keyboardType(.emailAddress)
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
          SecureField("Password", text: $viewModel.password)
          if !viewModel.errorMessage.isEmpty {
            Text(viewModel.errorMessage)
              .foregroundColor(Color.red)
          }
          Button {
            viewModel.register()
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
    .alert(isPresented: $viewModel.showAlert) {
      Alert(title: Text("Error"),
            message: Text(viewModel.errorMessage))
    }
  }
}

struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
  }
}
