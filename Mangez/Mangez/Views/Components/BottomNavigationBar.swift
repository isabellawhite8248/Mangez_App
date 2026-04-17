//
//  BottomNavigationBar.swift
//  Mangez
//
//  Created by Isabella White on 4/17/26.
//

import SwiftUI

struct BottomNavigationBar: View {
    enum HomeTab {
        case home
        case friends
        case recipes
        case list
        case calendar
    }
    var selectedTab: HomeTab

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .fill(Color(red: 0.05, green: 0.08, blue: 0.45))
                .frame(width: 300, height: 102)
                .overlay(
                    RoundedRectangle(cornerRadius: 18)
                        .stroke(Color.white.opacity(0.9), lineWidth: 2)
                )

            HStack(spacing: 10) {
                navIcon(name: "house.fill", tab: .home)
                navIcon(name: "person.2.fill", tab: .friends)
                navIcon(name: "fork.knife", tab: .recipes)
                navIcon(name: "list.clipboard", tab: .list)
                navIcon(name: "calendar", tab: .calendar)
            }
        }
    }

    private func navIcon(name: String, tab: HomeTab) -> some View {
        let isSelected = tab == selectedTab

        return ZStack {
            if isSelected {
                Circle()
                    .fill(Color.blue.opacity(0.35))
                    .frame(width: 90, height: 90)
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 3)
                    )
            }

            Image(systemName: name)
                .resizable()
                .scaledToFit()
                .frame(width: 42, height: 42)
                .foregroundColor(.white.opacity(0.95))
        }
        .frame(width: 48, height: 48)
    }
}

#Preview {
    BottomNavigationBar(selectedTab: .home)
}
