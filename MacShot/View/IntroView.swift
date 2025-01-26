//
//  IntroView.swift
//  MacShot
//
//  Created by Nonprawich I. on 26/1/25.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("isUserIntroCompleted") private var isUserIntroCompleted: Bool = false
    @Environment(\.dismissWindow) private var dismissWindow
    
    var body: some View {
        VStack(spacing: 15) {
            Text("What's New in \nMacShot")
                .font(.system(size: 35, weight: .bold))
                .multilineTextAlignment(.center)
                .padding(.bottom, 35)
            
            VStack(alignment: .leading, spacing: 25) {
                PointView(
                    title: "Screen Recording",
                    image: "video.fill",
                    description: "Capture your screen with high-quality recordings"
                )
                PointView(
                    title: "Window Capture",
                    image: "macwindow",
                    description: "Easily select any window for focused recording using ScreenCaptureKit"
                )
                PointView(
                    title: "Easy Saving",
                    image: "folder.fill",
                    description: "Save your recordings to your desired location with a click"
                )
            }
            .padding(.horizontal, 25)
            .padding(.bottom, 60)
            
            
            HStack(spacing: 25) {
                Button {
                    // close app
                    NSApplication.shared.terminate(nil)
                    
                } label: {
                    Text("Quit App")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(.red.gradient, in: .rect(cornerRadius: 8))
                }
                
                
                Button {
                    isUserIntroCompleted = true
                    dismissWindow(id: "IntroView")
                    
                } label: {
                    Text("Start")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color.primary.gradient, in: .rect(cornerRadius: 8))
                }
            }
            .buttonStyle(.plain)
        }
        .padding(30)
        .background(.ultraThickMaterial, in: .rect(cornerRadius: 30))
        .gesture(WindowDragGesture())
    }
    
    @ViewBuilder
    func PointView(title: String, image: String, description: String) -> some View {
        HStack(spacing: 15) {
            Image(systemName: image)
                .font(.largeTitle)
                .foregroundStyle(.primary)
                .frame(width: 35)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(description)
                    .font(.callout)
                    .foregroundStyle(.gray)
            }
        }
    }
}

