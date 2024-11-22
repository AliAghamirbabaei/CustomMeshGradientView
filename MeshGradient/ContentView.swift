//
//  ContentView.swift
//  MeshGradient
//
//  Created by Ali Aghamirbabaei on 11/22/24.
//

import SwiftUI

struct ContentView: View {
    @State var appear = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 16)
                .stroke(lineWidth: 16) // Define the stroke width
                .foregroundColor(.clear) // Make the stroke clear
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(lineWidth: 0)
                        .overlay(
                            CustomMeshGradientView()
                                .mask(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(lineWidth: 12)
                                )
                                .background(Color.black)
                                .cornerRadius(12)
                                .blur(radius: 1)
                        )
                )
                .blur(radius: 2)
                .frame(width: 280, height: 60)
        }
    }
}

#Preview {
    ContentView()
        .ignoresSafeArea()
}
