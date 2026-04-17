//
//  RecipeSearchView.swift
//  Mangez
//
//  Created by Isabella White on 4/16/26.
//

import SwiftUI

struct RecipeSearchView: View {
    var body: some View {
        ZStack {
            // Background
            Color(red: 0.05, green: 0.08, blue: 0.45)
                .ignoresSafeArea()
            
            Image("background_floral")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.16)
            
            VStack(spacing: 0) {
                Spacer().frame(height: 22)
                
                // Main card
                ZStack {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(Color.white.opacity(0.88))
                        .frame(width: 245, height: 525)
                    
                    VStack(spacing: 0) {
                        Spacer().frame(height: 12)
                        
                        // Top segmented control
                        HStack(spacing: 0) {
                            Button {
                            } label: {
                                Text("Recipe Search")
                                    .font(.system(size: 12, weight: .medium, design: .serif))
                                    .foregroundColor(Color(red: 0.33, green: 0.34, blue: 0.55))
                                    .frame(width: 106, height: 28)
                                    .background(
                                        Capsule()
                                            .fill(Color.white.opacity(0.95))
                                    )
                                    .overlay(
                                        Capsule()
                                            .stroke(Color(red: 0.18, green: 0.17, blue: 0.43), lineWidth: 2)
                                    )
                            }
                            
                            Button {
                            } label: {
                                Text("SavedRecipes")
                                    .font(.system(size: 12, weight: .bold, design: .serif))
                                    .foregroundColor(.white)
                                    .frame(width: 92, height: 32)
                                    .background(
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(Color(red: 0.05, green: 0.08, blue: 0.45))
                                    )
                            }
                        }
                        .frame(width: 198)
                        
                        Spacer().frame(height: 14)
                        
                        // Search bar
                        HStack(spacing: 6) {
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 16))
                                .foregroundColor(.gray)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 8)
                        .frame(width: 198, height: 32)
                        .background(Color.white.opacity(0.95))
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray.opacity(0.7), lineWidth: 2)
                        )
                        
                        Spacer().frame(height: 8)
                        
                        // Tag chips
                        HStack(spacing: 8) {
                            tagChip(title: "Vegan")
                            tagChip(title: "No Peanuts")
                        }
                        .frame(width: 198, alignment: .leading)
                        
                        Spacer().frame(height: 8)
                        
                        // Recipe list section
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white.opacity(0.72))
                            .frame(width: 198, height: 350)
                            .overlay(
                                VStack(spacing: 10) {
                                    recipeCard()
                                    recipeCard()
                                    recipeCard()
                                    recipeCard()
                                    
                                    HStack(spacing: 8) {
                                        Circle()
                                            .fill(Color.gray.opacity(0.75))
                                            .frame(width: 8, height: 8)
                                        
                                        Circle()
                                            .fill(Color.gray.opacity(0.35))
                                            .frame(width: 8, height: 8)
                                        
                                        Circle()
                                            .fill(Color.gray.opacity(0.35))
                                            .frame(width: 8, height: 8)
                                    }
                                    .padding(.top, 4)
                                }
                                    .padding(.top, 10)
                            )
                        
                        Spacer()
                        
                        // Add tags button
                        Button {
                        } label: {
                            Text("+AddTags")
                                .font(.system(size: 16, weight: .medium, design: .serif))
                                .foregroundColor(Color(red: 0.15, green: 0.12, blue: 0.42))
                                .frame(width: 106, height: 30)
                                .background(
                                    Capsule()
                                        .fill(Color.white.opacity(0.80))
                                )
                                .overlay(
                                    Capsule()
                                        .stroke(Color(red: 0.15, green: 0.12, blue: 0.42), lineWidth: 2)
                                )
                        }
                        
                        Spacer().frame(height: 16)
                    }
                }
                
                Spacer().frame(height: 10)
                
                BottomNavigationBar(selectedTab: .recipes)
                
                Spacer()
            }
        }
    }
    
    private func tagChip(title: String) -> some View {
        HStack(spacing: 5) {
            Image(systemName: "xmark.circle.fill")
                .font(.system(size: 13))
                .foregroundColor(.white)
            
            Text(title)
                .font(.system(size: 11, weight: .semibold, design: .serif))
                .foregroundColor(.white)
        }
        .padding(.horizontal, 10)
        .frame(height: 22)
        .background(
            Capsule()
                .fill(Color(red: 0.15, green: 0.22, blue: 0.58))
        )
        .overlay(
            Capsule()
                .stroke(Color(red: 0.08, green: 0.08, blue: 0.32), lineWidth: 1.2)
        )
    }
    
    private func recipeCard() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white.opacity(0.96))
                .frame(width: 185, height: 58)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.7), lineWidth: 1.2)
                )
            
            HStack(spacing: 10) {
                ZStack(alignment: .bottomLeading) {
                    Image("muffin_placeholder")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 44)
                        .clipped()
                        .cornerRadius(2)
                    
                    Circle()
                        .fill(Color(red: 0.19, green: 0.36, blue: 0.95))
                        .frame(width: 22, height: 22)
                        .overlay(
                            Text("75%")
                                .font(.system(size: 7, weight: .bold))
                                .foregroundColor(.white)
                        )
                        .offset(x: -4, y: 7)
                }
                .frame(width: 58, height: 44)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Recipe Name")
                        .font(.system(size: 12, weight: .semibold, design: .serif))
                        .foregroundColor(Color(red: 0.34, green: 0.34, blue: 0.34))
                    
                    HStack(spacing: 4) {
                        Image(systemName: "clock")
                            .font(.system(size: 10))
                            .foregroundColor(.gray)
                        
                        Text("Prep Time")
                            .font(.system(size: 10, weight: .regular, design: .serif))
                            .foregroundColor(.gray)
                    }
                }
                
                Spacer(minLength: 2)
                
                VStack(spacing: 8) {
                    Image(systemName: "arrow.up.left.and.arrow.down.right")
                        .font(.system(size: 11))
                        .foregroundColor(.gray.opacity(0.7))
                    
                    Image(systemName: "bookmark")
                        .font(.system(size: 15))
                        .foregroundColor(.gray.opacity(0.85))
                }
            }
            .padding(.horizontal, 8)
            .frame(width: 185, height: 58)
        }
    }
}

#Preview {
    RecipeSearchView()
}
