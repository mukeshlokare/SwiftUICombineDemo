//
//  Employee.swift
//  SwiftUICombineDemo
//
//  Created by Mukesh on 20/06/21.
//

import Foundation
struct Employee:Identifiable{
    var name: String
    var location: String
    var id = UUID()
}

class Model: ObservableObject{
    
    @Published var employees: [Employee] = []
    
    func loadEmployess(){
        employees = [
            .init(name: "mukesh lokare", location: "pune"),
            .init(name: "Shivanshu", location: "delhi")
        ]
    }
}
