//
//  Theme.swift
//  ThemeChanger
//
//  Created by Stewart Lynch on 2021-03-29.
//

import UIKit

protocol Theme {
    var primaryColor: UIColor { get }
    var secondaryColor: UIColor { get }
    var labelColor: UIColor { get }
    var themeName: String { get }
}
