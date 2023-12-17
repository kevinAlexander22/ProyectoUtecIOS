//
//  Home.swift
//  PortalUtec
//
//  Created by Kevin Najera on 7/12/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            List {
                Text("Inicio")
                Text("Notas")
                Text("Noticias")
                Text("Horas Sociales")
                Text("Informacion Academica")
                Text("Mapa Utec")
                Text("Carreras")
                Text("Cesrrar Sesion")
            }
            .navigationTitle("Menu")
            .navigationBarItems(leading: HamburgerMenuButton())
            
            Text("Contenido principal aquí")
                .padding()
        }
    }
}

struct HamburgerMenuButton: View {
    var body: some View {
        Button(action: {
            // Aquí puedes agregar la lógica para mostrar o ocultar el menú lateral
        }) {
            Image(systemName: "line.horizontal.3") // Ícono de hamburguesa
                .imageScale(.large)
                .padding()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

