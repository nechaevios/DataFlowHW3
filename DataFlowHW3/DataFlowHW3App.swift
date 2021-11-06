//
//  DataFlowHW3App.swift
//  DataFlowHW3
//
//  Created by Nechaev Sergey  on 05.11.2021.
//

import SwiftUI

@main
struct DataFlowHW3App: App {
    @StateObject private var userManager = UserManager()
    
    @AppStorage("userName") var userNameAppStorage = ""
    @AppStorage("isRegistered") var isRegisteredAppStorage = false
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .onAppear() {
                    userManager.name = userNameAppStorage
                    userManager.isRegistered = isRegisteredAppStorage
                }
                .environmentObject(userManager)
        }
    }
}


