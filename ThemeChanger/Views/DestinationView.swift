//
//  DestinationView.swift
//  ThemeChanger
//
//  Created by Stewart Lynch on 2021-03-28.
//

import SwiftUI

struct DestinationView: View {
    @Environment(DataSource.self) var dataSource: DataSource
    @Environment(\.dismiss) private var dismiss
    var body: some View {
            VStack {
                Text("This view is as a result of a Navigation Link")
                    .foregroundStyle(Color(dataSource.selectedTheme.labelColor))
                    .padding()
                Button("Dismiss the view") {
                    dismiss()
                }
                Spacer()
            }
            .buttonStyle(FilledRoundedCornerButtonStyle(
                            bgColor: Color(dataSource.selectedTheme.primaryColor),
                            fgColor: Color(dataSource.selectedTheme.secondaryColor))
            )
            .navigationTitle("Destination View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        DestinationView()
    }
        .environment(DataSource())
}
