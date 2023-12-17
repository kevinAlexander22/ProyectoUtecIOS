//
//  Meterias.swift
//  PortalUtec
//
//  Created by Kevin Najera on 16/12/23.
//

import SwiftUI

struct Materias: View {
    // Datos de ejemplo para representar las asignaturas
    let asignaturas: [Asignatura] = [
        Asignatura(nombre: "Matemáticas", descripcion: "Curso de matemáticas avanzadas"),
        Asignatura(nombre: "Historia", descripcion: "Curso de historia mundial"),
        Asignatura(nombre: "Programación", descripcion: "Curso de desarrollo de software"),
        // Agrega más asignaturas según sea necesario
    ]

    var body: some View {
        NavigationView {
            TabView {
                ForEach(asignaturas) { asignatura in
                    AsignaturaView(asignatura: asignatura)
                        .tag(asignatura.id)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .navigationTitle("Asignaturas")
        }
    }
}

struct AsignaturaView: View {
    let asignatura: Asignatura

    var body: some View {
        VStack {
            Text(asignatura.nombre)
                .font(.title)
                .padding()

            Text(asignatura.descripcion)
                .foregroundColor(.secondary)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(10)
        .padding()
    }
}

struct Asignatura: Identifiable {
    let id = UUID()
    let nombre: String
    let descripcion: String
}

struct Materias_Previews: PreviewProvider {
    static var previews: some View {
        Materias()
    }
}

