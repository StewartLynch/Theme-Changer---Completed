//
//  ContentView.swift
//  Theme Changer
//
//  Created by Stewart Lynch on 2021-03-28.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataSource: DataSource
    @State private var showModal = false
    @State private var showDestination = false
    var body: some View {
        NavigationView {
            ScrollView {
                Button("Modal Sheet") {
                    showModal = true
                }
                .padding(.top)
                NavigationLink(
                    destination: DestinationView(),
                    isActive: $showDestination,
                    label: {
                        Button("Push Navigation") {
                            showDestination = true
                        }
                    })
                Text(Sample.veryLongText)
                    .foregroundColor(Color(dataSource.selectedTheme.labelColor))
                    .padding()
            }
            .buttonStyle(FilledRoundedCornerButtonStyle(
                            bgColor: Color(dataSource.selectedTheme.primaryColor),
                            fgColor: Color(dataSource.selectedTheme.secondaryColor))
            )
            .navigationTitle("Theme Changer")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $showModal) {
            ModalSheetView()
        }
        .appearanceModifier(backgroundColor: dataSource.selectedTheme.primaryColor,
                            textColor: dataSource.selectedTheme.secondaryColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataSource())
    }
}
