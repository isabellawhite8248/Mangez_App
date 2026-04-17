//
//  GroceryListView.swift
//  Mangez
//
//  Created by Isabella White on 4/16/26.
//

import SwiftUI

struct GroceryListView: View {
    
    struct GroceryItem: Identifiable {
        let id = UUID()
        var name: String
        var quantity: String
        var isChecked: Bool
    }
    
    @State private var items: [GroceryItem] = [
        GroceryItem(name: "Vanilla", quantity: "XX", isChecked: true),
        GroceryItem(name: "Bell Peppers", quantity: "XX", isChecked: false),
        GroceryItem(name: "Berries", quantity: "XX", isChecked: false)
    ]
    
    var body: some View {
        ZStack {
            // Background
            Color(red: 0.08, green: 0.02, blue: 0.45)
                .ignoresSafeArea()
            
            VStack {
                Spacer(minLength: 20)
                
                // Main Card
                VStack(spacing: 16) {
                    
                    // Top Section
                    HStack {
                        Spacer()
                        
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "plus")
                                Text("Add Item")
                                    .foregroundColor(Color(red: 0.08, green: 0.02, blue: 0.45))
                            }
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(20)
                        }
                    }
                    
                    Text("Grocery List")
                        .font(.system(size: 40, weight: .semibold, design: .serif))
                        .foregroundColor(Color(red: 0.08, green: 0.02, blue: 0.45))
                        .padding(.horizontal, 8)
                        .offset(x: 40)
                    
                    Divider()
                    
                    // List Container
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(items.indices, id: \.self) { index in
                                GroceryRow(item: $items[index])
                            }
                        }
                        .padding()
                    }
                    .background(Color.white.opacity(0.6))
                    .cornerRadius(12)
                    
                    // Pagination dots (placeholder)
                    HStack(spacing: 6) {
                        Circle().frame(width: 6, height: 6)
                        Circle().frame(width: 6, height: 6)
                        Circle().frame(width: 6, height: 6)
                    }
                    .foregroundColor(.gray)
                }
                .padding()
                .background(Color.white.opacity(0.85))
                .cornerRadius(20)
                .padding(.horizontal)

                Image("background_floral")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 190)
                    .opacity(0.65)
                    .offset(x: -140, y: -510)
                
                BottomNavigationBar(selectedTab: .list)
            }
        }
    }
}

struct GroceryRow: View {
    @Binding var item: GroceryListView.GroceryItem
    
    var body: some View {
        HStack {
            Button(action: {
                item.isChecked.toggle()
            }) {
                Image(systemName: item.isChecked ? "checkmark.square" : "square")
            }
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .fontWeight(.medium)
                
                Text("Quantity: \(item.quantity)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "trash")
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

#Preview {
    GroceryListView()
}
