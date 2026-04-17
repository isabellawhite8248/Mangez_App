//
//  PantryView.swift
//  Mangez
//
//  Created by Isabella White on 4/16/26.
//

import SwiftUI

struct PantryCardItem: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let useSystemImage: Bool
}

struct PantryView: View {
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
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.white.opacity(0.92))
                        .frame(width: 355, height: 690)
                        .offset(x: -10)

                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 10) {
                            categorySection(
                                title: "Close to Expiration",
                                items: [
                                    PantryCardItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryCardItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryCardItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true)
                                ]
                            )

                            categorySection(
                                title: "Vegetables and Produce",
                                items: [
                                    PantryCardItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryCardItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryCardItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true)
                                ]
                            )

                            categorySection(
                                title: "Misc",
                                items: [
                                    PantryCardItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryCardItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true),
                                    PantryCardItem(name: "Item X", imageName: "cube.box.fill", useSystemImage: true)
                                ]
                            )

                            Button {
                            } label: {
                                Text("+ Add Item")
                                    .font(.system(size: 22, weight: .medium, design: .serif))
                                    .foregroundColor(.white)
                                    .frame(width: 160, height: 40)
                                    .background(
                                        Capsule()
                                            .fill(Color(red: 0.08, green: 0.08, blue: 0.32).opacity(0.90))
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
                        .padding(.leading, 16)
                    }
                    .frame(width: 355, height: 690)
                }
                .frame(width: 355, height: 690)

                Spacer().frame(height: 26)

                BottomNavigationBar(selectedTab: .home)
                
                Spacer()
            }
        }
    }

    private func categorySection(title: String, items: [PantryCardItem]) -> some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .font(.system(size: 18, weight: .semibold, design: .serif))
                .foregroundColor(Color(red: 0.35, green: 0.39, blue: 0.58))
                .padding(.bottom, 10)

            HStack(spacing: 8) {
                ForEach(items) { item in
                    itemCard(item: item)
                }
            }

            Rectangle()
                .fill(Color.gray.opacity(0.35))
                .frame(width: 150, height: 5)
                .padding(.vertical, 5)
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 14)
                .fill(Color.white.opacity(0.88))
                .frame(width: 325)
                .offset(x: -16)
        )
    }

    private func itemCard(item: PantryCardItem) -> some View {
        ZStack(alignment: .topTrailing) {
            RoundedRectangle(cornerRadius: 4)
                .fill(Color(red: 0.84, green: 0.90, blue: 0.95))
                .frame(width: 97, height: 70)
                .offset(x: -12)

            VStack(spacing: 6) {
                Group {
                    if item.useSystemImage {
                        Image(systemName: item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray)
                            .offset(x: -12)
                    } else {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 40)
                            .offset(x: -12)
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
                    .offset(x: -12)
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
            .offset(x: -4, y: -8)
        }
    }
}

#Preview {
    PantryView()
}
