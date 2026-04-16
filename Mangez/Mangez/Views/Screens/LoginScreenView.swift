//
//  LoginScreenView.swift
//  Mangez
//
//  Created by Isabella White on 4/16/26.
//

import SwiftUI

struct LoginScreenView: View {
    @State private var emailOrUsername = ""
    @State private var password = ""
    @State private var showPassword = false
    
    var body: some View {
        ZStack {
            // Background color
            Color(red: 0.86, green: 0.89, blue: 0.83)
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.white.opacity(0.75))
                .padding(.horizontal, 10)
                .padding(.vertical, 12)
            
            VStack(spacing: 0) {
                Spacer().frame(height: 30)
                
                // Top circular design (floral)
                ZStack {
                    Image("flower_circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 240, height: 240)
                        .clipShape(Circle())
                }
                
                // App name in cursive
                Image("app_name_fancy_font")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240, height: 90)
                
                
                VStack(alignment: .leading, spacing: 22) {
                    // Email / Username
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Email Address/Username")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.black)
                        
                        TextField("", text: $emailOrUsername)
                            .padding()
                            .frame(height: 48)
                            .background(Color(red: 0.88, green: 0.91, blue: 0.95))
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color(red: 0.05, green: 0.10, blue: 0.30), lineWidth: 2.5)
                            )
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    }
                    
                    // Password
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Password")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.black)
                        
                        ZStack(alignment: .trailing) {
                            Group {
                                if showPassword {
                                    TextField("", text: $password)
                                } else {
                                    SecureField("", text: $password)
                                }
                            }
                            .padding()
                            .frame(height: 48)
                            .background(Color(red: 0.88, green: 0.91, blue: 0.95))
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color(red: 0.05, green: 0.10, blue: 0.30), lineWidth: 2.5)
                            )
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            
                            Button {
                                showPassword.toggle()
                            } label: {
                                Image(systemName: showPassword ? "eye" : "eye.slash")
                                    .foregroundColor(.white)
                                    .padding(.trailing, 14)
                            }
                        }
                    }
                }
                .padding(.horizontal, 50)
                
                Spacer().frame(height: 28)
                
                // Login button
                Button {
                    //TODO: add functionality to the login button
                } label: {
                    Text("LOGIN")
                        .font(.system(size: 24, weight: .medium, design: .serif))
                        .foregroundColor(.white)
                        .frame(width: 185, height: 52)
                        .background(
                            Capsule()
                                .fill(Color(red: 0.09, green: 0.07, blue: 0.32))
                        )
                }
                
                Spacer().frame(height: 18)
                
                //TODO: Error message, trigger on incorrect login and adjust stroke fills of text fields above to turn red
//                HStack(alignment: .top, spacing: 10) {
//                    Image(systemName: "xmark.circle.fill")
//                        .foregroundColor(.red)
//                        .font(.system(size: 24))
//                    
//                    Text("Incorrect username or password, please try again.")
//                        .font(.system(size: 14))
//                        .foregroundColor(Color(red: 0.20, green: 0.15, blue: 0.35))
//                        .fixedSize(horizontal: false, vertical: true)
//                }
//                .padding(.horizontal, 12)
//                .padding(.vertical, 10)
//                .background(Color(red: 0.98, green: 0.83, blue: 0.80))
//                .cornerRadius(4)
//                .padding(.horizontal, 78)
                
                Spacer().frame(height: 24)
                
                // Links
                VStack(spacing: 6) {
                    Button("Forgot Username / Password?") {
                        //TODO: make this text clickable, link to forgot password screen
                    }
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.55))
                    
                    HStack(spacing: 4) {
                        Text("Don't have an account?")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.55))
                        
                        Button("Sign Up") {
                            //TODO: make this text clickable, link to sign up screen
                        }
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.55))
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginScreenView()
}
