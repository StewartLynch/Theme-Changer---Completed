//
//  ThemeManager.swift
//  ThemeChanger
//
//  Created by Stewart Lynch on 2021-03-29.
//

import Foundation

enum ThemeManager {
    static let themes: [Theme] = [Theme1(), Theme2(), Theme3()]
    
    static func getTheme(_ theme: Int) -> Theme {
        Self.themes[theme]
    }
}
