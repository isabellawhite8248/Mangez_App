//
//  SignUpView.swift
//  Mangez
//
//  Created by Isabella White on 4/16/26.
//

import SwiftUI

struct SignUpView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailOrPhone = ""
    @State private var password = ""
    @State private var showPassword = false
    @State private var agreedToTerms = false
    
    var body: some View {
        ZStack {
            // Outer background
            Color(red: 0.86, green: 0.89, blue: 0.93)
                .ignoresSafeArea()
            
            // Main card
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.white.opacity(1.0))
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
            
            VStack(spacing: 0) {
                Spacer().frame(height: 40)
                // Top logo area
                HStack(spacing: 12) {
                    Image("sign_up_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 240, height: 120)
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    underlinedField(title: "First Name*", text: $firstName)
                    underlinedField(title: "Last Name*", text: $lastName)
                    underlinedField(title: "Email/phone number*", text: $emailOrPhone)
                    passwordField
                }
                .padding(.horizontal, 56)
                
                Spacer().frame(height: 14)
                
                // Terms checkbox
                HStack(alignment: .top, spacing: 12) {
                    Rectangle()
                        .stroke(Color.gray.opacity(0.75), lineWidth: 2)
                        .frame(width: 20, height: 20)
                    
                    Text("I agree with the privacy terms and conditions")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.gray.opacity(0.95))
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Spacer()
                }
                .padding(.horizontal, 64)
                
                Spacer().frame(height: 20)
                
                // Create account button
                Button {
                    //TODO: Add functionality later, hover color should be the light blue specified in the penpot wireframe
                } label: {
                    Text("Create Account")
                        .font(.system(size: 18, weight: .medium, design: .serif))
                                .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.42))
                                .frame(width: 170, height: 45)
                                .background(
                                    Capsule()
                                        .fill(Color(red: 0.75, green: 0.85, blue: 0.95).opacity(0.4))
                                )
                                
                                .overlay(
                                    Capsule()
                                        .stroke(Color(red: 0.09, green: 0.10, blue: 0.42), lineWidth: 3)
                                )
                }
                
                Spacer()
                
                // Google sign in button
                Button {
                    //TODO: Add functionality later
                } label: {
                    HStack(spacing: 16) {
                        Text("G")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.blue) // placeholder only
                        
                        Text("Sign in with Google")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.black.opacity(0.8))
                    }
                    .frame(width: 300, height: 74)
                    .background(Color.white.opacity(0.55))
                    .overlay(
                        Capsule()
                            .stroke(Color.gray.opacity(0.75), lineWidth: 2)
                    )
                }
                
                Spacer().frame(height: 30)
                
                VStack(spacing: 4) {
                    Button("Forgot Username / Password?") {
                        //TODO: Add functionality later
                    }
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.55))
                    
                    HStack(spacing: 4) {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.55))
                        
                        Button("Login") {
                            //TODO: Add functionality later
                        }
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.55))
                    }
                }
                
                Spacer().frame(height: 72)
            }
        }
    }
    
    private func underlinedField(title: String, text: Binding<String>) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.gray.opacity(0.95))
            
            TextField("", text: text)
                .textFieldStyle(.plain)
                .frame(height: 4)
            
            Rectangle()
                .fill(Color.gray.opacity(0.55))
                .frame(height: 3)
        }
    }
    
    private var passwordField: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Password*")
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.gray.opacity(0.95))
            
            HStack {
                Group {
                    if showPassword {
                        TextField("", text: $password)
                    } else {
                        SecureField("", text: $password)
                    }
                }
                .textFieldStyle(.plain)
                .frame(height: 4)
                
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.fill" : "eye")
                        .foregroundColor(.gray.opacity(0.7))
                        .font(.system(size: 20))
                }
            }
            
            Rectangle()
                .fill(Color.gray.opacity(0.55))
                .frame(height: 3)
        }
    }
}

#Preview {
    SignUpView()
}
