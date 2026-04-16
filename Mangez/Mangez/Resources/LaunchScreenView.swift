//
//  LaunchScreenView.swift
//  Mangez
//
//  Created by Isabella White on 4/16/26.
//

import SwiftUI

struct LaunchScreenView: View {
    @State private var isActive = false
    var body: some View {
        if isActive{
            LoginScreenView()
        } else {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .topTrailing, endPoint: .bottomLeading)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("m_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .padding()
                    Text("Pre-heating...")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle (tint: .white))
                }
            }
            .onAppear {
                DispatchQueue.main
                    .asyncAfter(deadline: .now() + 3) {
                        withAnimation{
                            isActive = true
                        }
                    }
            }
        }
    }
}

#Preview {
    LaunchScreenView()
}
