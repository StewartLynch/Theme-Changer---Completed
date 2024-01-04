//
//  ModalSheetView.swift
//  Theme Changer
//
//  Created by Stewart Lynch on 2021-03-25.
//

import SwiftUI

struct ModalSheetView: View {
    @EnvironmentObject var dataSource: DataSource
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationView {
            VStack {
                Text("This view is as a result of a Modal Sheet presentation")
                    .foregroundColor(Color(dataSource.selectedTheme.labelColor))
                    .padding()
                ForEach(0..<ThemeManager.themes.count, id: \.self) { theme in
                    Button(ThemeManager.themes[theme].themeName) {
                        dataSource.selectedThemeAS = theme
                        dismiss()
                    }
                    .buttonStyle(FilledRoundedCornerButtonStyle(bgColor: Color(ThemeManager.themes[theme].primaryColor),
                                                                fgColor: Color(ThemeManager.themes[theme].secondaryColor)))
                }
                Spacer()
            }
            .navigationBarTitle("Modal Sheet View")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button {
                dismiss()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title2)
            })
        }
    }
}

struct ModalSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ModalSheetView()
    }
}
