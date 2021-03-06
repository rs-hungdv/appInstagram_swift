import SwiftUI
struct ContentView: View {
    @State var  email : String = ""
    @State var pass = ""
    var body: some View {
        NavigationView {
        
            ZStack{
                LinearGradient(gradient: .init(colors: [.myTopColor, .myBottomColor]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                VStack{
                    
                    VStack{
                        Image("Instagram_logo_white")
                        
                        Spacer().frame(height: 50)
                        LabelTextField(title: "name", text: $email)
                        TextField("Email", text: $email)
                            .foregroundColor(Color.white)
                            .padding(.all,10)
                            .background(Color.myTextFielColor)
                        
                        Spacer().frame(height: 25)
                        
                        TextField("Password", text: $pass)
                            .foregroundColor(Color.white)
                            .padding(.all,10)
                            .background(Color.myTextFielColor)
                        
                        Spacer().frame(height: 25)
                        
                        Button(action: {
                            if(email.isEmpty || pass.isEmpty) {
                                print("Chưa có gì")
                            } else {
                                print("a")
                            }
                            
                        }) {
                            HStack {
                                            Spacer()
                                            Text("Log In")
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: Double.textstyle_18,weight: .bold, design: .default))
                                    .padding(.vertical,Double.diment_14)
                                
                                Spacer()
                                        }
                      
                        }
                        .multilineTextAlignment(.center)
                        .background(Color.myButtonColor)
                        .cornerRadius(Double.diment_05)
                        
                        Spacer().frame(height: 25)
                    
                        HStack{
                            Text(String.forgot_password_title)
                                .font(.subheadline)
                                .foregroundColor(Color.white)
                           
                            NavigationLink(destination: Text("abced"), label: {
                                Text(String.sign_in)
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            })
                            
                            
                            
                            
                        }
                    }
                   Spacer()
                    HStack{
                        Text(String.dont_have_account)
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                        Text(String.sign_up)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                    }
                    }.padding(.all, Double.diment_10)
                    
            }
        }
    }
}
struct ContentViewB : View {
        var body: some View {
            NavigationView {
                VStack {
                    Text("Hello World B")

                }.navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
