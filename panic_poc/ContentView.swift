import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        ZStack {
            Image("gzymtrobg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        }
        
        VStack {
            Text("Ceci est une bête d'app pour tenter un panic sur iOS (crash)\n⚠️ A tes risques et périls\n\nJe (gzym) ne suis pas le créateur du POC, uniquement de l'app (projet xcode) qui permet de facilement l'utiliser.\nCREDITS: @speedyfriend433").multilineTextAlignment(.center)
                .padding()
            
            Button(action: {
                cacakipu()
                showAlert=true
            }) {
                Text("💣 Appuie ici bb :3")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .alert("💥 POC Exécuté", isPresented: $showAlert) {
                        Button("d'accord bb :3", role: .cancel) { }
            } message: {
                Text("Le script du POC à été executé.\nJe t'invite à attendre quelques secondes, et si ça n'a pas marché,\nretente au moins 4 fois (vraiment) ou alors tente de modifier la variable 'PORT_COUNT' puis réessaie.\nSinon le bug à peut être été patch et c'est caca alors.")
            }
        }
    }
}
