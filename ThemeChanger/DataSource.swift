//
//  DataSource.swift
//  ThemeChanger
//
//  Created by Stewart Lynch on 2021-03-29.
//

import SwiftUI

@Observable
class DataSource {
        var selectedThemeAS: Int {
            get {
                access(keyPath: \.selectedThemeAS)
                return UserDefaults.standard.integer(forKey: "selectedTheme")
            }
            set {
                withMutation (keyPath: \.selectedThemeAS) {
                    UserDefaults.standard.setValue (newValue, forKey: "selectedTheme")
                    updateTheme()
                }
            }
        }
    
    init() {
        updateTheme()
    }
    
    var selectedTheme: Theme = Theme3()
    
    func updateTheme() {
        selectedTheme = ThemeManager.getTheme(selectedThemeAS)
    }
}
