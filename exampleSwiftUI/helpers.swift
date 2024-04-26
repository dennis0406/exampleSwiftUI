//
//  SafeAreaInset.swift
//  exampleSwiftUI
//
//  Created by lap le on 25/04/2024.
//

import Foundation
import SwiftUI

func getStatusBarHeight() -> CGFloat {
    var statusBarHeight: CGFloat = 0
    let scenes = UIApplication.shared.connectedScenes
    let windowScene = scenes.first as? UIWindowScene
    let window = windowScene?.windows.first
    statusBarHeight = window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    return statusBarHeight
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

