//
//  LoginView.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import SwiftUI

struct LoginView: View {
  @StateObject var viewModel = LoginViewViewModel()
  var body: some View {
    NavigationView {
      ZStack{
        BackgroundView()
        VStack{
          HeaderView(title: "TaskMinder", subtitle: "Get things done")
          Form {
            TextField("Email Address", text: $viewModel.email)
              .keyboardType(.emailAddress)
              .autocorrectionDisabled()
              .textInputAutocapitalization(.never)
            SecureField("Password", text: $viewModel.password)
            Button {
              viewModel.login()
            } label: {
              Text("Login")
                .bold()
                .frame(maxWidth: .infinity, alignment: .center)
            }
          }
          .scrollContentBackground(.hidden)
          Spacer()
          VStack {
            Text("New around here?")
              .frame(maxWidth: .infinity, alignment: .center)
            NavigationLink("Create an Account", destination: RegisterView().navigationTitle("Create Account"))
              .frame(maxWidth: .infinity, alignment: .center)
          }
          .padding(.bottom)
          Spacer()
        }
        .padding(.top)
      }
      .alert(isPresented: $viewModel.showAlert) {
        Alert(title: Text("Error"),
              message: Text(viewModel.errorMessage))
      }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
