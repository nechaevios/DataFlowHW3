//
//  ContentView.swift
//  DataFlowHW3
//
//  Created by Nechaev Sergey  on 05.11.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            VStack(spacing: 100) {
                Text("Hi, \(userManager.name)")
                Text("\(timer.counter)")
            }
            .font(.largeTitle)
            .padding(.top, 100)
            
            Spacer()
            
            VStack(spacing: 50) {
                LogInButtonView(timer: timer)
                LogOutButtonView()
            }
            .padding(.bottom, 100)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
