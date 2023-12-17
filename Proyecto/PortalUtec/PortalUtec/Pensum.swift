//
//  Pensum.swift
//  PortalUtec
//
//  Created by Kevin Najera on 16/12/23.
//

import SwiftUI

struct Pensum: View {
    // Datos de ejemplo para representar las opciones
    let opciones = ["MATERIA 1", "MATERIA 2", "MATERIA 3", "MATERIA 4", "MATERIA 5", "MATERIA 6"]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2), spacing: 16) {
                    ForEach(opciones, id: \.self) { opcion in
                        OpcionView(opcion: opcion)
                    }
                }
                .padding()
            }
            .navigationTitle("Pensum")
        }
    }
}

struct OpcionView: View {
    let opcion: String

    var body: some View {
        VStack {
            Text(opcion)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

struct Pensum_Previews: PreviewProvider {
    static var previews: some View {
        Pensum()
    }
}
