//
//  ContentView.swift
//  SortAlgos
//
//  Created by Aimee Temple on 2025-10-30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var values = (1...100).map(SortValue.init).shuffled()
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Sort-Algos")
                .font(.largeTitle)
                .fontWeight(.black)
            
            GeometryReader { proxy in
                HStack(spacing: 0) {
                    ForEach(values) { value in
                            Rectangle()
                            .fill(value.color)
                            .frame(width: proxy.size.width * 0.01, height: proxy.size.height * Double(value.id) / 100)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
