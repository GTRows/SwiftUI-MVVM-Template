# SwiftUI-MVVM-Template

This repository is a template for SwiftUI applications following the Model-View-ViewModel (MVVM) architectural pattern.

## Project Structure

- `ContentView.swift`: The main view of the app.
- `Preview Content`: Contains assets used for previewing the app.
- `Utils`: Contains utility files, including `StringExtensions.swift` and `Constants.swift`.
- `View`: Contains the SwiftUI view files, including:
  - `HomeView.swift`: The main home view of the app.
  - `InitialView.swift`: The initial loading view of the app.
  - `AuthView`: A subfolder containing views related to authentication, such as `LoginView.swift`, `SignUpView.swift`, and `AuthView.swift`.
- `Service`: Contains service files that handle specific functionalities in the app, including `AlertService.swift` (for alert handling) and `FireBaseService.swift` (for Firebase-related operations).
- `Model`: Contains model files and protocols, such as `ItemModel.swift` and `ItemProtocol.swift`.
- `App`: Contains the main app file (`SwiftUI_MVVM_TemplateApp.swift`) and `Persistence.swift` (for data persistence).
- `ViewModel`: Contains ViewModel files, including `AuthViewModel.swift` (for handling authentication logic) and `HomeViewModel.swift` (for managing the home view logic).

## Usage

To use this template:

1. Click on the "Use this template" button to create a new repository.
2. Clone the new repository to your local machine.
3. Open the project in Xcode.
4. Customize the project as needed, then build and run it on a simulator or physical device.

## Requirements

- iOS 15.0 or later
- Xcode 13.0 or later

## License

This project is available under the MIT license. See the LICENSE file for more info.
