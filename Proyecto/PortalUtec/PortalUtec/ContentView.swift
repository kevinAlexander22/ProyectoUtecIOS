//
//  ContentView.swift
//  PortalUtec
//
//  Created by Kevin Najera on 7/12/23.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack {
            Image("logoUtec")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 100)

            TextField("Correo", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Contraseña", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: signIn) {
                Text("Inicio Sesion")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            }
            NavigationLink(destination: Home()) {
                             Text("Invitado")
                                 .padding()
                                 .foregroundColor(.blue)
                         }
        }
        .padding()
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }

    private func signIn() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                showAlert = true
                alertMessage = error.localizedDescription
            } else {
                // Login successful, you can navigate to another screen or perform additional actions.
                print("Login successful")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
