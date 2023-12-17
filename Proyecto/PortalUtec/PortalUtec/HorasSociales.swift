//
//  HorasSociales.swift
//  PortalUtec
//
//  Created by Kevin Najera on 16/12/23.
//

import SwiftUI

struct HorasSociales: View {
    // Datos de ejemplo para representar las tarjetas
    let tarjetas: [Tarjeta] = [
        Tarjeta(nombre: "Actividad 1", imagen: "imagen1"),
        Tarjeta(nombre: "Actividad 2", imagen: "imagen2"),
        // Agrega más tarjetas según sea necesario
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2), spacing: 16) {
                    ForEach(tarjetas, id: \.id) { tarjeta in
                        CardView(tarjeta: tarjeta)
                    }
                }
                .padding()
            }
            .navigationTitle("Horas Sociales")
        }
    }
}

struct CardView: View {
    let tarjeta: Tarjeta

    var body: some View {
        VStack {
            Image(tarjeta.imagen)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .cornerRadius(10)
                .clipped()

            Text(tarjeta.nombre)
                .font(.headline)
                .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}

struct Tarjeta: Identifiable {
    let id = UUID()
    let nombre: String
    let imagen: String
}

struct HorasSociales_Previews: PreviewProvider {
    static var previews: some View {
        HorasSociales()
    }
}
