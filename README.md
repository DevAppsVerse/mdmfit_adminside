# Project: MDMFit Admin Side - Flutter

Flutter-based app for iOS and Android platforms.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Cloning the Repository](#cloning-the-repository)
- [Installing Dependencies](#installing-dependencies)
- [Running the Project](#running-the-project)
- [Building the iOS App](#building-the-ios-app)
- [Contributing](#contributing)

## Prerequisites

Before you begin, ensure you have met the following requirements:

- **Flutter SDK:** Install Flutter from the [official website](https://flutter.dev/docs/get-started/install).
- **Xcode (macOS only):** Install from the Apple Developer website.
- **CocoaPods:** Install via terminal:
  ```bash
  brew install cocoapods
  ```
- **Android Studio (optional for Android support):** Download from the [Android Studio website](https://developer.android.com/studio).

## Cloning the Repository

1. Open terminal or Git Bash.
2. Navigate to your desired directory.
3. Clone the repository:
   ```bash
   git clone https://github.com/DevAppsVerse/mdmfit_adminside.git
   ```
4. Navigate to the project directory:
   ```bash
   cd mdmfit_adminside
   ```

## Installing Dependencies

Run the following command in the project root:

```bash
flutter pub get
```

## Running the Project

### iOS

1. (Optional) Open the project in Xcode for iOS-specific changes:
   ```bash
   open ios/Runner.xcworkspace
   ```
2. Run the app on an iOS Simulator or Device:
   ```bash
   flutter run -d ios
   ```

### Android

1. Ensure an Android emulator or physical device is connected.
2. Run the app:
   ```bash
   flutter run -d android
   ```

## Building the iOS App

To build the iOS app for release, run:

```bash
flutter build ios --release
```

### In Xcode (Optional)

1. Open the project:
   ```bash
   open ios/Runner.xcworkspace
   ```
2. Select the target device and set up the signing identity.
3. Build and run or archive using the Xcode build tools.

## Contributing

If you would like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature-branch
   ```
3. Make your changes and commit them:
   ```bash
   git commit -m "Add some feature"
   ```
4. Push to the branch:
   ```bash
   git push origin feature-branch
   ```
5. Open a pull request.

