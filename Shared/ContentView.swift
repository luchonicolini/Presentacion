//
//  ContentView.swift
//  Shared
//
//  Created by Luciano Nicolini on 28/04/2022.
//

import SwiftUI
import CoreData
import AudioToolbox

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var editingEmailTextfield: Bool = false
    @State private var editingPasswordTextfield: Bool = false
    
    var body: some View {
        ZStack {
            Image("background-3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
           
            VStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Sign Up")
                        .font(Font.largeTitle.bold())
                        .foregroundColor(.white)
                    Text("Access to 120+ horus of courses,tutorials, and livestrems")
                        .font(.subheadline)
                        .foregroundColor(Color.white.opacity(0.7))
                   //Email
                    HStack(spacing: 12.0) {
                        TextfieldIcon(currentlyEditing: $editingEmailTextfield, iconName: "envelope.open.fill")
                            TextField("Email", text: $email) { isEditing in
                                editingEmailTextfield = isEditing
                                editingPasswordTextfield = false
                            }
                            .colorScheme(.dark)
                            .foregroundColor(Color.white.opacity(0.7))
                            .autocapitalization(.none)
                            .textContentType(.emailAddress)
                    }
                    .frame(height: 52) //ancho-barra
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.white, lineWidth: 1.0)
                            .blendMode(.overlay)
                    )
                    .background(
                        Color("secondaryBackground")
                            .cornerRadius(16.0)
                            .opacity(0.8)
                    )
                    
                    //Password
                    HStack(spacing: 12.0) {
                        TextfieldIcon(currentlyEditing: $editingPasswordTextfield, iconName: "key.fill")
                        SecureField("Password", text: $password)
                            .colorScheme(.dark)
                            .foregroundColor(Color.white.opacity(0.7))
                            .autocapitalization(.none)
                            .textContentType(.password)
                    }
                    .frame(height: 52)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.white, lineWidth: 1.0)
                            .blendMode(.overlay)
                    )
                    .background(
                        Color("secondaryBackground")
                            .cornerRadius(16.0)
                            .opacity(0.8)
                            .onTapGesture {
                                editingPasswordTextfield = true
                                editingEmailTextfield = false
                            }
                    )
                    //Sign Up
                    GradientButton()
                    
                    //By clicking
                    Text("By clicking on Sign up, you agree to our Terms of service and Privacy policy")
                        .font(.footnote)
                        .foregroundColor(Color.white.opacity(0.7))
                    //Line
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.white.opacity(0.1))
                   
                    //Already have?
                    Button(action: {
                        print("Switch to Sign in")
                    }, label: {
                        HStack(spacing: 4) {
                            Text("Already have an account?")
                                .font(.footnote)
                                .foregroundColor(Color.white.opacity(0.7))
                            GardientText(text: "Sign in")
                                .font(Font.footnote.bold())
                                
                        }
                    })
                    
                }
                .padding(20)
            }
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white.opacity(0.2))
                    .background(Color("secondaryBackground").opacity(0.5))
                    .background(VisualEffectBlur(blurStyle: .systemThinMaterialDark))
                    .shadow(color: Color("shadowColor").opacity(0.5), radius: 60, x: 0, y: 30)
            )
            .cornerRadius(30.0)
            .padding(.horizontal)
        }
    }
}
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



    
