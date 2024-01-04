# Switching Themes in SwiftUI

This accomplishes exactly the same thing but the code has been updated for the Observation Framework and iOS 17\.

Changes Made to Source Files

### Overall Changes

* Replaced NavigationView with NavigationStack
* Replaced .navigationBarTitle with .navigationTitle
* Replaced all PreviewProviders with the new #Preview macro
* Replaced .navigationBarItems with .toolbar
* Replaced @EnvironmentObject with @Environment(DataSource.self)
* Replaced .foregroundColor with .foregroundStyle

### Individual File Changes

#### DataSource

* Changed to use the Observable macro instead of ObservableObject
* Replace AppStorage as it is not supported in the Onservation Framework to use a getter and setter to store directly in UserDefaults

#### ContentView

* Updated NavigationLink for iOS 17

