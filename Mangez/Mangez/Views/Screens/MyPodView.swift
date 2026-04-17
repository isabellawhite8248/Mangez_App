//
//  MyPodView.swift
//  Mangez
//
//  Created by Isabella White on 4/16/26.
//

import SwiftUI

struct MyPodView: View {
    
    let xOffsetDecorativeLines: CGFloat = -60
    let podElementsXOffset:CGFloat = 50
    let profileXOffset:CGFloat = 10
    let decLineColer: Color = Color(red: 0.08, green: 0.12, blue: 0.35)
    
    var body: some View {
        ZStack {
            // Background
            Color(red: 0.08, green: 0.02, blue: 0.45)
                .ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer().frame(height: 36)

                // Main card
                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.white.opacity(0.98))
                        .frame(width: 335, height: 650)
                        .padding(.leading, 35)

                    // Decorative vertical lines
                    HStack(spacing: 6) {
                        Spacer()

                        Rectangle()
                            .fill(decLineColer)
                            .frame(width: 5)
                            .offset(x: xOffsetDecorativeLines)

                        Rectangle()
                            .fill(decLineColer.opacity(0.5))
                            .frame(width: 5)
                            .offset(x: xOffsetDecorativeLines)
                        
                    }
                    .frame(width: 335, height: 620)
                    .padding(.trailing, 70)
                    .opacity(0.95)
                    
                    RoundedRectangle(cornerRadius: 16) //background to the status set button
                        .fill(decLineColer)
                        .stroke(Color.white, lineWidth: 4)
                        .frame(width: 290, height: 50)
                        .offset(x: 58, y: 600)

                    VStack(alignment: .leading, spacing: 0) {
                        // top floral corner image placeholder
                        HStack {
                            Spacer()
                            Image("background_floral")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 180, height: 190)
                                .opacity(0.65)
                                .offset(x: 100, y: -40)
                        }

                        Spacer().frame(height: 2)

                        // Title
                        Text("My Pod")
                            .font(.system(size: 40, weight: .semibold, design: .serif))
                            .foregroundColor(Color(red: 0.08, green: 0.02, blue: 0.45))
                            .padding(.horizontal, 8)
                            .offset(x: podElementsXOffset, y: (podElementsXOffset + 60)*(-1))

                        Spacer().frame(height: 10)

                        // Search field
                        HStack(spacing: 6) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .font(.system(size: 16))

                            Text("")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }
                        .padding(.horizontal, 8)
                        .frame(width: 102, height: 28)
                        .background(Color.white.opacity(0.98))
                        .overlay(
                            RoundedRectangle(cornerRadius: 7)
                                .stroke(Color.gray.opacity(0.7), lineWidth: 2)
                                .frame(width: 190, height: 28)
                                .offset(x: podElementsXOffset - 10)
                        )
                        .padding(.leading, 10)
                        .offset(x: podElementsXOffset, y: (podElementsXOffset + 60)*(-1))

                        Spacer().frame(height: 10)

                        // Member list
                        VStack(spacing: 4) {
                            podMemberRow(
                                memberName: "Joey Hagus",
                                ringColor: .green,
                                statusColor: .green,
                                imageSystemName: "person.fill"
                            )

                            podMemberRow(
                                memberName: "Joey Hagus",
                                ringColor: .yellow,
                                statusColor: .yellow,
                                imageSystemName: "person.fill"
                            )

                            podMemberRow(
                                memberName: "Joey Hagus",
                                ringColor: .red,
                                statusColor: .pink,
                                imageSystemName: "person.fill"
                            )

                            podMemberRow(
                                memberName: "Joey Hagus",
                                ringColor: .gray,
                                statusColor: .white,
                                imageSystemName: "person.fill",
                                hollowStatus: true
                            )
                        }
                        .padding(.leading, 8)
                        .frame(width: 290)
                        .offset(x: podElementsXOffset, y: (podElementsXOffset + 60)*(-1))

                        Spacer().frame(height: 10)

                        // Add member button
                        Button {
                        } label: {
                            Text("+ Add Member")
                                .font(.system(size: 13, weight: .medium, design: .serif))
                                .foregroundColor(Color(red: 0.16, green: 0.12, blue: 0.42))
                                .frame(width: 112, height: 28)
                                .background(
                                    Capsule()
                                        .fill(Color.white.opacity(0.75))
                                )
                                .overlay(
                                    Capsule()
                                        .stroke(Color(red: 0.16, green: 0.12, blue: 0.42), lineWidth: 2)
                                )
                        }
                        .padding(.leading, 8)
                        .offset(x: podElementsXOffset + 10, y: (podElementsXOffset + 60)*(-1))

                        Spacer()
                
                        // Bottom status box
                        HStack(spacing: 8) {
                            Circle()
                                .fill(Color.green)
                                .frame(width: 12, height: 12)

                            HStack {
                                Text("Set your status*")
                                    .font(.system(size: 10))
                                    .foregroundColor(.gray)

                                Spacer()

                                Image(systemName: "chevron.down")
                                    .font(.system(size: 9, weight: .bold))
                                    .foregroundColor(.gray)
                            }
                            .padding(.horizontal, 10)
                            .frame(height: 30)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray.opacity(0.55), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal, 14)
                        .padding(.bottom, 12)
                        .frame(width: 280)
                        .offset(x: 60, y: 33)
                    }
                    .frame(width: 335, height: 620, alignment: .topLeading)
                }

                Spacer().frame(height: 12)

                BottomNavigationBar(selectedTab: .friends)

                Spacer()
            }
        }
    }

    private func podMemberRow(
        memberName: String,
        ringColor: Color,
        statusColor: Color,
        imageSystemName: String,
        hollowStatus: Bool = false
    ) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.10, green: 0.10, blue: 0.22))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white.opacity(0.8), lineWidth: 1.2)
                )
                .frame(width: 280, height: 58)

            HStack(spacing: 8) {
                ZStack {
                    Circle()
                        .stroke(ringColor, lineWidth: 2.3)
                        .frame(width: 38, height: 38)
                        .offset(x: profileXOffset)

                    Circle()
                        .fill(Color.gray.opacity(0.35))
                        .frame(width: 32, height: 32)
                        .offset(x: profileXOffset)

                    Image(systemName: imageSystemName)
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .offset(x: profileXOffset)
                }

                Text(memberName.uppercased())
                    .font(.system(size: 16, weight: .semibold, design: .serif))
                    .foregroundColor(.white)
                    .frame(width: 170)
                    .offset(x: profileXOffset*(-1))

                Spacer(minLength: 2)

                Group {
                    if hollowStatus {
                        Circle()
                            .stroke(Color.white.opacity(0.95), lineWidth: 1.4)
                            .frame(width: 12, height: 12)
                    } else {
                        Circle()
                            .fill(statusColor)
                            .frame(width: 12, height: 12)
                    }
                }

                VStack(spacing: 5) {
                    Image(systemName: "square.and.pencil")
                        .foregroundColor(.white)
                        .font(.system(size: 13))

                    Image(systemName: "trash")
                        .foregroundColor(.white)
                        .font(.system(size: 13))
                }
            }
            .padding(.horizontal, 8)
            .frame(width: 180)
        }
    }

    private func safeSymbolName(_ name: String) -> String {
        if name == "refrigerator.fill" {
            return "door.left.hand.open"
        }
        return name
    }
}

#Preview {
    MyPodView()
}
