//
//  ContentView.swift
//  AccessibilitySandbox
//
//  Created by Tarun on 02/07/26.
//

import SwiftUI

struct ContentView: View {
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-horstmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let labels = [
        "Tulips",
        "Frozen tree buds",
        "Sunflowers",
        "Fireworks"
    ]
    
    @State private var selectedPictures = Int.random(in: 0...3)
    
    var body: some View {
        
        Button {
            selectedPictures = Int.random(in: 0...3)
        } label: {
            Image(pictures[selectedPictures])
                .resizable()
                .scaledToFit()
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(labels[selectedPictures])
        
        //MARK: Hiding and grouping accessiblity data
//        Image(decorative: "character")
    }
}

#Preview {
    ContentView()
}
