import SwiftUI

struct FormasDePago: View {
    let formasDePago = [
        FormaDePago(nombre: "Tarjeta de Crédito", imagen: "tarjeta_credito", informacion: "Información sobre tarjeta de crédito"),
        FormaDePago(nombre: "Transferencia Bancaria", imagen: "transferencia_bancaria", informacion: "Información sobre transferencia bancaria"),
        FormaDePago(nombre: "PayPal", imagen: "paypal", informacion: "Información sobre PayPal"),
        FormaDePago(nombre: "Bitcoin", imagen: "bitcoin", informacion: "Información sobre Bitcoin")
    ]

    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                ForEach(formasDePago) { formaDePago in
                    CardView2(formaDePago: formaDePago)
                }
            }
            .padding()
            .navigationTitle("Formas de Pago")
        }
    }
}

struct CardView2: View {
    let formaDePago: FormaDePago

    var body: some View {
        VStack {
            Image(formaDePago.imagen)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .cornerRadius(10)
                .clipped()

            Text(formaDePago.nombre)
                .font(.headline)
                .padding()

            Text(formaDePago.informacion)
                .foregroundColor(.secondary)
                .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}

struct FormaDePago: Identifiable {
    let id = UUID()
    let nombre: String
    let imagen: String
    let informacion: String
}

struct FormasDePago_Previews: PreviewProvider {
    static var previews: some View {
        FormasDePago()
    }
}

