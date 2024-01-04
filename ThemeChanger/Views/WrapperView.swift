//
//  WrapperView.swift
//  ThemeChanger
//
//  Created by Stewart Lynch on 2021-03-29.
//

import SwiftUI

struct WrapperView: View {
    @Environment(DataSource.self) var dataSource: DataSource
    var body: some View {
        ForEach(0..<ThemeManager.themes.count, id: \.self) { theme in
            if ThemeManager.themes[theme].themeName == dataSource.selectedTheme.themeName {
                ContentView()
            }
        }
    }
}

#Preview {
    WrapperView()
        .environment(DataSource())
}
