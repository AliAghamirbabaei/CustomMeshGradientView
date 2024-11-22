//
//  CustomMeshGradientView.swift
//  MeshGradient
//
//  Created by Ali Aghamirbabaei on 11/22/24.
//

import SwiftUI

struct CustomMeshGradientView: View {
    @State var appear = false
    
    var body: some View {
        MeshGradient(width: 3, height: 3, points: [
            [0.0, 0.0], [0.5, 0.0], [1.0, 0.0],
            [0.0, 0.5], appear ? [0.5, 0.5] : [0.8, 0.2], [1.0, 0.5],
            [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]
        ], colors: [
            .black, appear ? .black : .red, appear ? .black : .red,
            .blue, .blue, .blue,
            .green, .green, .green
        ])
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                appear.toggle()
            }
        }
    }
}

#Preview {
    CustomMeshGradientView()
        .ignoresSafeArea()
}
