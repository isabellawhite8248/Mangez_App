//
//  ResetPasswordView.swift
//  Mangez
//
//  Created by Isabella White on 4/16/26.
//

import SwiftUI

struct ResetPasswordView: View {
    @State private var recoveryInput = ""
    @State private var showInput = false
    
    var body: some View {
        ZStack {
            // Outer background
            Color(red: 0.86, green: 0.89, blue: 0.93)
                .ignoresSafeArea()
            
            // Main card
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.white.opacity(0.78))
                .padding(.horizontal, 10)
                .padding(.vertical, 6)
            
            VStack(spacing: 0) {
                Spacer().frame(height: 80)
                
                // Lock icon placeholder
                ZStack {
                    Circle()
                        .stroke(Color.gray.opacity(0.55), lineWidth: 4)
                        .frame(width: 180, height: 180)
                    
                    Image(systemName: "lock.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 72, height: 88)
                        .foregroundColor(Color.gray.opacity(0.75))
                }
                
                Spacer().frame(height: 70)
                
                VStack(alignment: .leading, spacing: 14) {
                    Text("Please enter an email address\n number to find your account:")
                        .font(.system(size: 17, weight: .regular))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                    
                    ZStack(alignment: .trailing) {
                        TextField("", text: $recoveryInput)
                            .padding(.horizontal, 14)
                            .frame(height: 58)
                            .background(Color(red: 0.80, green: 0.86, blue: 0.92))
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color(red: 0.10, green: 0.10, blue: 0.45), lineWidth: 3)
                            )
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        
                        Button {
                            showInput.toggle()
                        } label: {
                            Image(systemName: showInput ? "eye" : "eye.slash")
                                .font(.system(size: 28))
                                .foregroundColor(.white.opacity(0.9))
                                .padding(.trailing, 18)
                        }
                    }
                }
                .padding(.horizontal, 80)
                
                Spacer().frame(height: 20)
                
                // Send code button
                HStack {
                    Button {
                        // TODO: add functionality later
                    } label: {
                        Text("Send Code")
                            .font(.system(size: 19, weight: .medium, design: .serif))
                            .foregroundColor(.white)
                            .frame(width: 130, height: 40)
                            .background(
                                Capsule()
                                    .fill(Color(red: 0.09, green: 0.10, blue: 0.32))
                            )
                            .overlay(
                                Capsule()
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 74)
                
                Spacer()
                
                //TODO: implement conditions for success message, consider making the success/error banners components to resuse them on different screens
//                HStack(alignment: .top, spacing: 10) {
//                    Image(systemName: "checkmark.circle")
//                        .font(.system(size: 34, weight: .regular))
//                        .foregroundColor(Color(red: 0.39, green: 0.75, blue: 0.12))
//                    
//                    Text("Password was successfully reset!")
//                        .font(.system(size: 14, weight: .regular))
//                        .foregroundColor(Color(red: 0.12, green: 0.35, blue: 0.18))
//                        .fixedSize(horizontal: false, vertical: true)
//                    
//                    Spacer(minLength: 0)
//                }
//                .padding(.horizontal, 10)
//                .padding(.vertical, 12)
//                .background(Color(red: 0.78, green: 0.93, blue: 0.76))
//                .overlay(
//                    RoundedRectangle(cornerRadius: 3)
//                        .stroke(Color(red: 0.68, green: 0.90, blue: 0.63), lineWidth: 3)
//                )
//                .cornerRadius(3)
//                .padding(.horizontal, 100)
                
                Spacer().frame(height: 70)
                
                VStack(spacing: 4) {
                    Button("Return back to Login") {
                        // TODO: add functionality later
                    }
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.55))
                    
                    HStack(spacing: 4) {
                        Text("Don't have an account?")
                            .font(.system(size: 15, weight: .regular))
                            .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.55))
                        
                        Button("Sign Up") {
                            // TODO: add functionality later
                        }
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColor(Color(red: 0.10, green: 0.10, blue: 0.55))
                    }
                }
                
                Spacer().frame(height: 72)
            }
        }
    }
}

#Preview {
    ResetPasswordView()
}
