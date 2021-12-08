import SwiftUI
struct LabelTextField: View {
    // 1
    var title = "TITLE"
    var text: Binding<String>
    
    var body: some View {
        VStack(alignment: .leading) {
            // 2
            Text(title)
                .font(.headline)
            // 3
            TextField(title, text: text)
                .padding(.all)
                .background(Color(red: 255.0/255.0, green: 244.0/255.0, blue: 233.0/255.0, opacity: 1.0))
                .cornerRadius(10.0)
        }
        .padding(.horizontal, 15)
    }
}

struct LabelTextField_Previews: PreviewProvider {
    // 4
    @State static var text = ""
    static var previews: some View {
        // 5
        LabelTextField(text: $text)
    }
}
