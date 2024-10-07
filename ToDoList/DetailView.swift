
import SwiftUI

struct DetailView: View {
    
    var passedValue: String
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.green)
            Text("You Are a Swifty Legend! \(passedValue)")
    
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Spacer()
            
            Button(action: {
                dismiss()
            }) {
                Text("Go Back")
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()

    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}
