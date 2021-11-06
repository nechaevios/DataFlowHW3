//
//  LogOutButtonView.swift
//  DataFlowHW3
//
//  Created by Nechaev Sergey  on 06.11.2021.
//

import SwiftUI

struct LogOutButtonView: View {
    @EnvironmentObject private var user: UserManager
    
    @AppStorage("userName") var userNameAppStorage = ""
    @AppStorage("isRegistered") var isRegisteredAppStorage = false
    
    var body: some View {
        Button(action: { userLogOut() }) {
            Text("Log Out")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
    
}

extension LogOutButtonView {
    private func userLogOut() {
        user.isRegistered.toggle()
        userNameAppStorage = ""
        isRegisteredAppStorage = false
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
