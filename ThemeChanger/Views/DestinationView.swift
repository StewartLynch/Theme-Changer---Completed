//
//  DestinationView.swift
//  ThemeChanger
//
//  Created by Stewart Lynch on 2021-03-28.
//

import SwiftUI

struct DestinationView: View {
    @EnvironmentObject var dataSource: DataSource
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
            VStack {
                Text("This view is as a result of a Navigation Link")
                    .foregroundColor(Color(dataSource.selectedTheme.labelColor))
                    .padding()
                Button("Dismiss the view") {
                    presentationMode.wrappedValue.dismiss()
                }
                Spacer()
            }
            .buttonStyle(FilledRoundedCornerButtonStyle(
                            bgColor: Color(dataSource.selectedTheme.primaryColor),
                            fgColor: Color(dataSource.selectedTheme.secondaryColor))
            )
            .navigationBarTitle("Destination View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DestinationView()
                .environmentObject(DataSource())
        }
    }
}
