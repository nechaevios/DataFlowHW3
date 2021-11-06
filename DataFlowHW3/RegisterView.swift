//
//  RegisterView.swift
//  DataFlowHW3
//
//  Created by Nechaev Sergey  on 05.11.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var user: UserManager
    
    @AppStorage("userName") var userNameAppStorage = ""
    @AppStorage("isRegistered") var isRegisteredAppStorage = false
    
    @State private var userName = ""
    @State private var isButtonDisabled = true
    @State private var nameLength = "0"
    @State private var counterColor = Color.red
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $userName)
                    .multilineTextAlignment(.center)
                    .onChange(of: userName, perform: countNameLength)
                Text(nameLength)
                    .foregroundColor(counterColor)
            }
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName:  "checkmark.circle")
                    Text("OK")
                }
            }.disabled(isButtonDisabled)
        }
        .padding()
    }
    
}

extension RegisterView {
    private func registerUser() {
        if !userName.isEmpty {
            user.name = userName
            user.isRegistered.toggle()
            
            userNameAppStorage = userName
            isRegisteredAppStorage.toggle()
        }
    }
    
    private func countNameLength(_ : String) {
        nameLength = "\(userName.count)"
        
        if userName.count < 3 {
            counterColor = Color.red
            isButtonDisabled = true
        } else {
            counterColor = Color.green
            isButtonDisabled = false
        }
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
