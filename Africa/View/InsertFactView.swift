//
//  InsertFactView.swift
//  Africa
//
//  Created by Sabir's MacBook on 9/15/22.
//

import SwiftUI

struct InsertFactView: View {
    
    let animal: Animal
    
    var body: some View {
        Group {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct InsertFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsertFactView(animal: animals[2])
    }
}
