//
//  ContentView.swift
//  ContadorSwiftUi
//
//  Created by Artur Mac on 06/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count: Int = 0
    
    let items = ["item 1","item 2", "item 3", "item 4", "item 5"]
    
    var body: some View {
        NavigationView{
            List(items, id: \.self){
                item in Text(item)
            }
        }
        
        VStack {
            Text("Contador: \(count)")
                .font(.title)
                .padding()
            
            Button{
              count += 1
            } label: {
                Text("Incrementar")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            
            Button{
              count -= 1
            } label: {
                Text("Decrementar")
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}
    
    #Preview {
        ContentView()
    }

