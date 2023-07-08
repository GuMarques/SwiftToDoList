//
//  NewItemView.swift
//  ToDoList
//
//  Created by Gustavo Marques on 7/7/23.
//

import SwiftUI

struct NewItemView: View {
  @StateObject var viewModel = NewItemViewViewModel()
  @Binding var newItemPresented: Bool
  var body: some View {
    ZStack{
      Color("BackgroundEnd")
        .ignoresSafeArea()
      VStack{
        Text("New Item")
          .bold()
          .font(.system(size: 28))
          .padding(.top, 30)
        Form {
          TextField("Title", text: $viewModel.title)
          DatePicker("Due Date", selection: $viewModel.dueDate, in: Date.now...)
            .datePickerStyle(.graphical)
          Button {
            if viewModel.canSave {
              viewModel.save()
              newItemPresented = false
            } else {
              viewModel.showAlert = true
            }
          } label: {Text("Save")
              .bold()
              .frame(maxWidth: .infinity, alignment: .center)
          }
        }
        .scrollContentBackground(.hidden)
        .offset(y: -30)
      }
    }
    .alert(isPresented: $viewModel.showAlert) {
      Alert(title: Text("Error"),
            message: Text("Please fill in all fields and select a due date that is today or newer."))
    }
  }
}

struct NewItemView_Previews: PreviewProvider {
  static var previews: some View {
    NewItemView(newItemPresented: Binding(get: {return true}, set: {_ in}))
  }
}
