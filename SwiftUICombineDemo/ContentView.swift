//
//  ContentView.swift
//  SwiftUICombineDemo
//
//  Created by Mukesh on 20/06/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var model = Model()
    
    var body: some View {
        
        VStack{
            Button(action: {
                self.model.loadEmployess()
            }) {
                Text("Get Employees")
            }
            
            List(model.employees){ employee in
                VStack{
                    Text(employee.name)
                    Text(employee.location)
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
