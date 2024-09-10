//
//  ContentView.swift
//  iOSPOCNavigation
//
//  Created by Guillaume Manzano on 10/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    ViewController1Wrapper()
                }
                label: {
                    Text("Navigate to View Controller 1")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
