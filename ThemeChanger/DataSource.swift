//
//  DataSource.swift
//  ThemeChanger
//
//  Created by Stewart Lynch on 2021-03-29.
//

import SwiftUI

class DataSource: ObservableObject {
    @AppStorage("selectedTheme") var selectedThemeAS = 1 {
        didSet {
            updateTheme()
        }
    }
    
    init() {
        updateTheme()
    }
    
    @Published var selectedTheme: Theme = Theme3()
    
    func updateTheme() {
        selectedTheme = ThemeManager.getTheme(selectedThemeAS)
    }
}
