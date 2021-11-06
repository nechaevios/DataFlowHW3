//
//  UserManager.swift
//  DataFlowHW3
//
//  Created by Nechaev Sergey  on 05.11.2021.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
}

