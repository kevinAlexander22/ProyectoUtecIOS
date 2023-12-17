//
//  Aranceles.swift
//  PortalUtec
//
//  Created by Kevin Najera on 16/12/23.
//
import SwiftUI

struct Aranceles: View {
    let opciones = ["Opción 1", "Opción 2", "Opción 3", "Opción 4", "Opción 5"]

    var body: some View {
        NavigationView {
            List(opciones, id: \.self) { opcion in
                NavigationLink(destination: DetalleOpcionView(opcion: opcion)) {
                    Text(opcion)
                }
            }
            .navigationTitle("Aranceles")
        }
    }
}

struct DetalleOpcionView: View {
    let opcion: String

    var body: some View {
        Text("Detalle de \(opcion)")
            .navigationTitle(opcion)
    }
}

struct Aranceles_Previews: PreviewProvider {
    static var previews: some View {
        Aranceles()
    }
}
