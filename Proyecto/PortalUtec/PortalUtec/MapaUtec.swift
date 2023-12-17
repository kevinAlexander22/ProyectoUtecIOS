//
//  MapaUtec.swift
//  PortalUtec
//
//  Created by Kevin Najera on 16/12/23.
//

import SwiftUI

struct Carrusel: View {
    var body: some View {
        NavigationView {
            TabView {
                CarruselItemView(imagen: "imagen1", texto: "Opción 1")
                CarruselItemView(imagen: "imagen2", texto: "Opción 2")
                CarruselItemView(imagen: "imagen3", texto: "Opción 3")
                CarruselItemView(imagen: "imagen4", texto: "Opción 4")
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .navigationTitle("Mapa Utec")
        }
    }
}

struct CarruselItemView: View {
    let imagen: String
    let texto: String

    var body: some View {
        VStack {
            Image(imagen)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(10)

            Text(texto)
                .font(.title)
                .padding()
        }
        .padding()
    }
}

struct Carrusel_Previews: PreviewProvider {
    static var previews: some View {
        Carrusel()
    }
}
