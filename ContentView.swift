import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false

    var body: some View {
        NavigationStack {
            ZStack {
                Circle()
                    .fill(Color.blue.opacity(0.1))
                    .frame(width: 500, height: 500)
                
                VStack(spacing: 20) {
                    Text("Welcome!")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Enter Your Username & Password")
                        .font(.caption2)
                        .opacity(0.8)
                        .padding(.bottom)
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(20)
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(20)
                    
                    Button("Login") {
                        // onboarding sayfasını devam et simdilik
                        isLoggedIn = true
                    }
                    .padding()
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                }
            }
            .navigationDestination(isPresented: $isLoggedIn) {
                OnboardingView()
            }
        }
    }
}

