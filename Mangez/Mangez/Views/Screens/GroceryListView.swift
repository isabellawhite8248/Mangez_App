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
            Color.blue.opacity(0.9)
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
                            }
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(20)
                        }
                    }
                    
                    Text("Grocery List")
                        .font(.title)
                        .fontWeight(.semibold)
                    
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
                
                Spacer()
                
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
