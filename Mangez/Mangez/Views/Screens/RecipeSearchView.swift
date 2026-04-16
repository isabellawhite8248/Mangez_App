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
            Color(red: 0.05, green: 0.08, blue: 0.45)
                .ignoresSafeArea()

            Image("background_floral")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.50)

            VStack(spacing: 0) {
                Spacer().frame(height: 30)

                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.white.opacity(0.92))

                    HStack {
                        RoundedRectangle(cornerRadius: 3)
                            .fill(Color.gray.opacity(0.35))
                            .frame(width: 6, height: 590)
                            .padding(.leading, 10)

                        Spacer()
                    }

                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 24) {
                            categorySection(
                                title: "Items Close to Expiration",
                                items: [
                                    PantryItem(name: "Eggs", imageName: "eggs_placeholder", useSystemImage: false),
                                    PantryItem(name: "Cherry", imageName: "cherries_placeholder", useSystemImage: false),
                                    PantryItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true)
                                ]
                            )

                            categorySection(
                                title: "Vegetables and Produce",
                                items: [
                                    PantryItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true)
                                ]
                            )

                            categorySection(
                                title: "Meats and Diary",
                                items: [
                                    PantryItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true)
                                ]
                            )

                            categorySection(
                                title: "Misc",
                                items: [
                                    PantryItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true)
                                ]
                            )

                            Button {
                            } label: {
                                Text("Add Item")
                                    .font(.system(size: 24, weight: .medium, design: .serif))
                                    .foregroundColor(.white)
                                    .frame(width: 182, height: 62)
                                    .background(
                                        Capsule()
                                            .fill(Color(red: 0.08, green: 0.08, blue: 0.32))
                                    )
                                    .overlay(
                                        Capsule()
                                            .stroke(Color.black.opacity(0.7), lineWidth: 1.5)
                                    )
                            }
                            .padding(.top, 6)
                            .padding(.bottom, 20)
                        }
                        .padding(.top, 24)
                        .padding(.horizontal, 30)
                        .padding(.leading, 16)
                    }
                }
                .frame(width: 300, height: 690)

                Spacer().frame(height: 26)

                bottomNavigationBar
                Spacer()
            }
        }
    }

    private func categorySection(title: String, items: [PantryItem]) -> some View {
        VStack(alignment: .leading, spacing: 14) {
            Text(title)
                .font(.system(size: 18, weight: .semibold, design: .serif))
                .foregroundColor(Color(red: 0.35, green: 0.39, blue: 0.58))

            HStack(spacing: 8) {
                ForEach(items) { item in
                    itemCard(item: item)
                }
            }

            Rectangle()
                .fill(Color.gray.opacity(0.45))
                .frame(height: 5)
                .padding(.horizontal, 2)
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 14)
                .fill(Color.white.opacity(0.88))
        )
    }

    private func itemCard(item: PantryItem) -> some View {
        ZStack(alignment: .topTrailing) {
            RoundedRectangle(cornerRadius: 4)
                .fill(Color(red: 0.84, green: 0.90, blue: 0.95))
                .frame(width: 97, height: 70)

            VStack(spacing: 6) {
                Group {
                    if item.useSystemImage {
                        Image(systemName: item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray)
                    } else {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 40)
                    }
                }

                Text(item.name)
                    .font(.system(size: 11, weight: .medium, design: .serif))
                    .foregroundColor(Color(red: 0.33, green: 0.37, blue: 0.70))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(
                        Capsule()
                            .fill(Color.white.opacity(0.9))
                    )
            }
            .frame(width: 97, height: 70)

            ZStack {
                Circle()
                    .fill(Color(red: 0.04, green: 0.05, blue: 0.40))
                    .frame(width: 18, height: 18)

                Image(systemName: "plus")
                    .font(.system(size: 9, weight: .bold))
                    .foregroundColor(.white)
            }
            .offset(x: 8, y: -8)
        }
    }

    private var bottomNavigationBar: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color.white.opacity(0.9), lineWidth: 1.5)
                .frame(width: 300, height: 102)

            HStack(spacing: 10) {
                navIcon(name: "house.fill", isSelected: true)
                navIcon(name: "person.2.fill", isSelected: false)
                navIcon(name: "fork.knife", isSelected: false)
                navIcon(name: "list.clipboard", isSelected: false)
                navIcon(name: "calendar", isSelected: false)
            }
        }
    }

    private func navIcon(name: String, isSelected: Bool) -> some View {
        ZStack {
            if isSelected {
                Circle()
                    .stroke(Color.white.opacity(0.95), lineWidth: 2)
                    .frame(width: 108, height: 108)
                    .background(
                        Circle()
                            .fill(Color.blue.opacity(0.18))
                    )
            }

            Image(systemName: name)
                .resizable()
                .scaledToFit()
                .frame(width: 34, height: 34)
                .foregroundColor(.white.opacity(0.95))
        }
        .frame(width: 48, height: 48)
    }
}

struct PantryItem: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let useSystemImage: Bool
}

#Preview {
    RecipeSearchView()
}
