//
//  LogInButtonView.swift
//  DataFlowHW3
//
//  Created by Nechaev Sergey  on 06.11.2021.
//

import SwiftUI

struct LogInButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
        
    }
}

struct LogInButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogInButtonView(timer: TimeCounter())
    }
}
