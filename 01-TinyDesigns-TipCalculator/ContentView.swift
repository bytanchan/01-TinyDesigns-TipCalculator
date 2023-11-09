import SwiftUI

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent: Double = 15.0

    var body: some View {
        VStack {
            Image(systemName: "dollarsign.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.accentColor)
            Text("Total Amount")
                .font(.largeTitle)
                .bold()
            HStack {
                Text("$")
                TextField("Amount", text: $total)
                    .keyboardType(.decimalPad)
            }
            HStack {
                Text("\(Int(tipPercent))%")
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
            }
            Text(tipAmountText)
        }
        .padding()
    }

    var tipAmountText: String {
        // Try to convert the total to a Double, if it fails, return a default message
        if let totalAmount = Double(total) {
            // Calculate tip and return formatted string
            return String(format: "Tip Amount: $%.2f", totalAmount * tipPercent / 100)
        } else {
            // Handle the error, here we return a default string
            return "Tip Amount: $0.00"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
