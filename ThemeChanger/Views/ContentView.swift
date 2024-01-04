//
//  ContentView.swift
//  Theme Changer
//
//  Created by Stewart Lynch on 2021-03-28.
//

import SwiftUI

struct ContentView: View {
    @Environment(DataSource.self) var dataSource: DataSource
    @State private var showModal = false
    var body: some View {
        NavigationStack {
            ScrollView {
                Button("Modal Sheet") {
                    showModal = true
                }
                .padding(.top)
                NavigationLink("Push Navigation", destination: DestinationView())
                Text(Sample.veryLongText)
                    .foregroundStyle(Color(dataSource.selectedTheme.labelColor))
                    .padding()
            }
            .buttonStyle(FilledRoundedCornerButtonStyle(
                            bgColor: Color(dataSource.selectedTheme.primaryColor),
                            fgColor: Color(dataSource.selectedTheme.secondaryColor))
            )
            .navigationTitle("Theme Changer")
        }
        .sheet(isPresented: $showModal) {
            ModalSheetView()
        }
        .appearanceModifier(backgroundColor: dataSource.selectedTheme.primaryColor,
                            textColor: dataSource.selectedTheme.secondaryColor)
    }
}

#Preview {
    ContentView()
        .environment(DataSource())
}
