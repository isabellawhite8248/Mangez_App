//
//  CalendarView.swift
//  Mangez
//
//  Created by Isabella White on 4/16/26.
//

import SwiftUI

struct CalendarView: View {
    
    let hours = Array(9...16) // 9 AM – 4 PM
    
    var body: some View {
        ZStack {
            // Background
            Color.blue.opacity(0.9)
                .ignoresSafeArea()
            
            VStack {
                
                // Top Date Selector
                HStack {
                    Image(systemName: "square.and.pencil")
                    Text("March 7th, 20XX")
                        .font(.headline)
                }
                .padding()
                .background(Color.white.opacity(0.85))
                .cornerRadius(12)
                .padding(.top)
                
                // Calendar Card
                ZStack(alignment: .bottom) {
                    
                    VStack(spacing: 0) {
                        ScrollView {
                            VStack(spacing: 20) {
                                
                                ForEach(hours, id: \.self) { hour in
                                    VStack(alignment: .leading, spacing: 4) {
                                        
                                        // Time Label
                                        Text(timeString(hour))
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        
                                        ZStack(alignment: .leading) {
                                            
                                            // Line
                                            Rectangle()
                                                .frame(height: 1)
                                                .foregroundColor(hour == 12 ? .red : .gray.opacity(0.3))
                                            
                                            // Meal block at 1 PM
                                            if hour == 13 {
                                                Text("Lasagna with Zucchini")
                                                    .font(.caption)
                                                    .padding(8)
                                                    .background(Color.teal.opacity(0.6))
                                                    .cornerRadius(8)
                                                    .offset(x: 40, y: -10)
                                            }
                                        }
                                    }
                                }
                            }
                            .padding()
                        }
                    }
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(20)
                    .padding(.horizontal)
                    
                    // Bottom Sheet (Add/Edit Meal)
                    VStack(spacing: 10) {
                        
                        HStack {
                            Circle()
                                .fill(Color.green)
                                .frame(width: 12, height: 12)
                            
                            Text("Add/Edit a Meal")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("Time")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        VStack(alignment: .leading, spacing: 8) {
                            CheckboxRow(title: "Pasta Al Dente")
                            CheckboxRow(title: "Big Mac Burger")
                            CheckboxRow(title: "Recipe XYZ")
                        }
                        
                        // Search bar placeholder
                        HStack {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(8)
                        .background(Color.white)
                        .cornerRadius(8)
                        
                        // Time picker placeholder
                        HStack {
                            Spacer()
                            Text("6:30 PM")
                                .padding(6)
                                .background(Color.blue.opacity(0.2))
                                .cornerRadius(6)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(16)
                    .padding()
                }
                
                // Bottom Nav Bar
                BottomNavigationBar(selectedTab: .calendar)
            }
        }
    }
    
    func timeString(_ hour: Int) -> String {
        let suffix = hour < 12 ? "AM" : "PM"
        let formatted = hour > 12 ? hour - 12 : hour
        return "\(formatted) \(suffix)"
    }
}

struct CheckboxRow: View {
    @State private var isChecked = false
    var title: String
    
    var body: some View {
        HStack {
            Button(action: {
                isChecked.toggle()
            }) {
                Image(systemName: isChecked ? "checkmark.square" : "square")
            }
            
            Text(title)
                .font(.caption)
            
            Spacer()
        }
    }
}

#Preview {
    CalendarView()
}
