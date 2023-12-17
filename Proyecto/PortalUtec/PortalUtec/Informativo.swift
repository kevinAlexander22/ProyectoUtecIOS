//
//  Informativo.swift
//  PortalUtec
//
//  Created by Kevin Najera on 16/12/23.
//

import SwiftUI

struct Informativo: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2), spacing: 16) {
                    ForEach(1...4, id: \.self) { index in
                        InformacionCardView(index: index)
                    }
                }
                .padding()
            }
            .navigationTitle("Informativo")
        }
    }
}

struct InformacionCardView: View {
    let index: Int

    var body: some View {
        VStack {
            Image(systemName: "photo") // Reemplaza con la imagen real
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .cornerRadius(10)
                .clipped()

            Text("Título \(index)")
                .font(.headline)
                .padding()

            Text("Texto informativo \(index)")
                .foregroundColor(.secondary)
                .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}

struct Informativo_Previews: PreviewProvider {
    static var previews: some View {
        Informativo()
    }
}

