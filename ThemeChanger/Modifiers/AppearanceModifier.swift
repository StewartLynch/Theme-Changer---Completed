//
//  NavBarAppearanceModifier.swift
//  ThemeChanger
//
//  Created by Stewart Lynch on 2021-03-28.
//
import SwiftUI

struct AppearanceModifier: ViewModifier {
    // See this video: https://youtu.be/XdfVPPfnZZU
    let backgroundColor: UIColor
    let textColor: UIColor
    let backgroundImage: UIImage?
    init(backgroundColor: UIColor, textColor: UIColor, backgroundImage: UIImage? = nil) {
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.backgroundImage = backgroundImage
        // Navigation Bar Appearance Styling
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundImage = backgroundImage
        navBarAppearance.backgroundImageContentMode = .scaleAspectFill
        if backgroundImage == nil {
            navBarAppearance.configureWithTransparentBackground()
        }
        navBarAppearance.backgroundColor = backgroundColor
        navBarAppearance.titleTextAttributes = [.foregroundColor: textColor]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: textColor]
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().tintColor = textColor
    }

    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func appearanceModifier(backgroundColor: UIColor, textColor: UIColor, backgroundImage: UIImage? = nil, tintColor: UIColor? = nil) -> some View {
        self.modifier(AppearanceModifier(backgroundColor: backgroundColor, textColor: textColor, backgroundImage: backgroundImage))
    }
}
