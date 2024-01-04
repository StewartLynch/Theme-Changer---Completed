//
//  ThemeChanger.swift
//  Theme Changer
//
//  Created by Stewart Lynch on 2021-03-27.
//

import SwiftUI

@main
struct ThemeChanger: App {
    var body: some Scene {
        WindowGroup {
            WrapperView()
                .environment(DataSource())
        }
    }
}
