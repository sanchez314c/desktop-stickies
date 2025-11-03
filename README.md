# Desktop Stickies 📝

> Modern macOS Sticky Notes with Professional Interface and Advanced Features

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Swift](https://img.shields.io/badge/Swift-5.10%2B-FA7343?logo=swift)](https://swift.org/)
[![macOS](https://img.shields.io/badge/macOS-13%2B-000000?logo=apple)](https://www.apple.com/macos/)
[![Xcode](https://img.shields.io/badge/Xcode-15.0%2B-1575F9?logo=xcode)](https://developer.apple.com/xcode/)

## 📸 Main Interface

![Desktop Stickies Screenshot](build_resources/screenshots/desktop-stickies-interface.jpg)

> The Ultimate Digital Sticky Notes Experience for macOS - Professional Note-Taking with Modern UI

Desktop Stickies is a sophisticated macOS application that brings the classic sticky note experience into the modern era. Built with SwiftUI and Core Data, it provides a beautiful, native interface for creating and managing digital notes with professional features and seamless macOS integration.

## ✨ Features

- 🎨 **Rich Text Formatting** - Full support for fonts, colors, styles, and text formatting
- 🌈 **Multiple Note Colors** - Choose from various colors to organize and categorize your notes
- 🪟 **Floating Windows** - Notes float elegantly above other applications for easy access
- 💾 **Auto-Save** - Notes save automatically as you type, never losing your content
- 🔍 **Instant Search** - Quickly find notes with powerful search functionality
- 📱 **Responsive Design** - Notes adapt to different sizes and screen resolutions
- 🚀 **Native Performance** - Built with SwiftUI for optimal macOS performance
- 🔄 **Cloud Sync Ready** - Core Data + CloudKit integration for cross-device syncing
- ⌨️ **Keyboard Shortcuts** - Full keyboard support for power users
- 🎯 **Focus Mode** - Minimize distractions and focus on individual notes
- 📊 **Note Analytics** - Track your note-taking habits and productivity
- 🗂️ **Smart Organization** - Automatic categorization and smart folders

## 📸 Screenshots

<details>
<summary>View Screenshots</summary>

![Main Interface](build_resources/screenshots/desktop-stickies-interface.jpg)
*Main interface showing floating notes with different colors and formatting*

![Rich Text Editor](build_resources/screenshots/rich-text-editor.jpg)
*Built-in rich text editor with formatting toolbar*

![Color Picker](build_resources/screenshots/color-picker.jpg)
*Color picker for customizing note appearance*

![Search Interface](build_resources/screenshots/search-interface.jpg)
*Powerful search functionality across all notes*

</details>

## 🚀 Quick Start - One-Command Build & Run

### Option 1: Xcode Solution (Recommended)

```bash
# Clone and build
git clone https://github.com/sanchez314c/desktop-stickies.git
cd desktop-stickies

# Open in Xcode and run
open StickyNotes.xcodeproj
```

### Option 2: Command Line Build

```bash
# Build from command line
xcodebuild -scheme StickyNotes -configuration Debug build

# Run the application
open "build/Build/Products/Debug/StickyNotes.app"
```

### Build Options

```bash
# Debug build
xcodebuild -scheme StickyNotes -configuration Debug build

# Release build
xcodebuild -scheme StickyNotes -configuration Release build

# Build for all architectures
xcodebuild -scheme StickyNotes -configuration Release build ARCHS="arm64 x86_64" ONLY_ACTIVE_ARCH=NO

# Clean build
xcodebuild -scheme StickyNotes clean
```

## 📋 Prerequisites

For running from source:
- **macOS** 13.0 (Ventura) or later
- **Xcode** 15.0 or later
- **Swift** 5.10 or later
- **Git** (for cloning the repository)

The application includes all necessary dependencies and frameworks.

## 🛠️ Installation

### Detailed Installation

```bash
# Clone the repository
git clone https://github.com/sanchez314c/desktop-stickies.git
cd desktop-stickies

# Option 1: Use Xcode (Recommended)
open StickyNotes.xcodeproj

# Option 2: Command line build
xcodebuild -scheme StickyNotes -configuration Release build
```

### Building from Source

```bash
# One-command build for current platform
xcodebuild -scheme StickyNotes -configuration Release build

# Build for distribution
xcodebuild -scheme StickyNotes -configuration Release -derivedDataPath ./build build

# Create archive for App Store
xcodebuild -scheme StickyNotes -configuration Release archive -archivePath ./build/StickyNotes.xcarchive

# Export archive
xcodebuild -exportArchive -archivePath ./build/StickyNotes.xcarchive -exportPath ./build/StickyNotes.app -exportOptionsPlist exportOptions.plist
```

### Build Output Locations

After building, find your application in:
- **Debug**: `build/Build/Products/Debug/StickyNotes.app`
- **Release**: `build/Build/Products/Release/StickyNotes.app`
- **Archive**: `build/StickyNotes.xcarchive`

## 📖 Usage

### 1. Starting the Application

- **Xcode**: Build and Run (⌘R)
- **Built App**: Double-click StickyNotes.app
- **Command Line**: `open "build/Build/Products/Release/StickyNotes.app"`

### 2. Creating Notes

**Multiple ways to create notes:**
- **Menu Bar**: `File > New Note` or press `⌘N`
- **Dock**: Right-click app icon and select "New Note"
- **Toolbar**: Click the "+" button in the main toolbar
- **Global Shortcut**: Press `⌃⌥N` (Control + Option + N)

### 3. Rich Text Editing

**Formatting options:**
- **Fonts**: Choose from system fonts with live preview
- **Colors**: Apply text and background colors
- **Styles**: Bold, Italic, Underline, Strikethrough
- **Lists**: Create bulleted and numbered lists
- **Alignment**: Left, center, right, and justified text
- **Links**: Add clickable URLs to your notes

### 4. Note Management

**Organization features:**
- **Color Coding**: Choose from 8 predefined colors or custom colors
- **Resizing**: Drag corners to resize notes
- **Positioning**: Drag notes to any position on screen
- **Stacking**: Automatically arrange notes in grids
- **Pinning**: Keep important notes always on top
- **Hiding**: Close notes to hide them (content is saved)

### 5. Search and Navigation

**Search capabilities:**
- **Instant Search**: Results appear as you type
- **Global Search**: Search across all note content
- **Date Filtering**: Find notes by creation or modification date
- **Color Filtering**: Filter notes by color
- **Content Preview**: See matching content highlighted

## 🔧 Configuration

### Directory Structure

```
~/Library/Containers/com.sanchez314c.stickynotes/
├── Data Library/
│   ├── Application Support/
│   │   ├── StickyNotes.storedata    # Core Data database
│   │   └── StickyNotes.storedata-shm # Shared memory
│   └── Documents/
│       └── Stickies/                 # Note exports
└── Settings/
    └── preferences.plist             # User preferences
```

### Environment Variables

```bash
# Set custom data directory
export STICKYNOTES_DATA_DIR=/path/to/data

# Enable debug mode
export STICKYNOTES_DEBUG=1

# Disable CloudKit sync
export STICKYNOTES_NO_CLOUD=1
```

### Preferences

Access preferences through the app menu:
- **General**: Default colors, fonts, and behaviors
- **Sync**: CloudKit sync settings and account management
- **Shortcuts**: Customize keyboard shortcuts
- **Appearance**: Theme and UI customization
- **Advanced**: Debug options and experimental features

## 🐛 Troubleshooting

### Common Issues

<details>
<summary>Application won't start</summary>

- **Permissions**: Ensure app has necessary permissions in System Settings
- **macOS Version**: Verify you're running macOS 13.0 or later
- **Gatekeeper**: Allow app from unidentified developer in Security settings
- **Xcode**: If running from source, check Xcode code signing settings
</details>

<details>
<summary>Notes not saving</summary>

1. Check available disk space
2. Verify app has write permissions
3. Reset Core Data store (will delete all notes)
4. Check iCloud sync status if using CloudKit
5. Restart the application
</details>

<details>
<summary>Cloud sync not working</summary>

- **iCloud Account**: Ensure you're signed into iCloud
- **iCloud Drive**: Enable iCloud Drive in System Settings
- **Network Connection**: Check internet connectivity
- **Storage Space**: Verify available iCloud storage
- **Sync Status**: Check sync status in preferences
</details>

<details>
<summary>Performance issues</summary>

- **Note Count**: Archive or delete old notes if you have 1000+
- **Images**: Large images in notes can slow down performance
- **Restart**: Quit and restart the application
- **Memory**: Check Activity Monitor for memory usage
- **Storage**: Ensure sufficient disk space for Core Data operations
</details>

## 📁 Project Structure

```
desktop-stickies/
├── StickyNotes.xcodeproj/  # Xcode project configuration
├── StickyNotes.xcworkspace # Xcode workspace (if using packages)
├── Package.swift           # Swift Package Manager configuration
├── Sources/                # Source code
│   ├── StickyNotes/        # Main application target
│   │   ├── StickyNotesApp.swift          # App entry point
│   │   ├── ContentView.swift            # Main view
│   │   ├── Models/                       # Data models
│   │   │   ├── Note.swift                # Core Data model
│   │   │   ├── NoteColor.swift          # Color enumeration
│   │   │   └── NotesManager.swift       # Note management
│   │   ├── Views/                        # SwiftUI views
│   │   │   ├── NoteWindowView.swift     # Note window
│   │   │   ├── RichTextEditor.swift     # Text editor
│   │   │   ├── ColorPickerView.swift    # Color selection
│   │   │   └── SearchView.swift         # Search interface
│   │   ├── Services/                     # Business logic
│   │   │   ├── PersistenceService.swift # Core Data service
│   │   │   ├── CloudKitService.swift    # Cloud sync service
│   │   │   └── WindowManager.swift      # Window management
│   │   ├── Utilities/                    # Helper functions
│   │   │   ├── Extensions.swift         # Swift extensions
│   │   │   └── Constants.swift          # App constants
│   │   └── Resources/                    # App resources
│   │       ├── Assets.xcassets          # Images and icons
│   │       ├── Localizable.strings      # Localization
│   │       └── StickyNotes.entitlements # App entitlements
│   └── StickyNotesCore/      # Core module (if modular)
├── Tests/                   # Test files
│   ├── StickyNotesTests/    # Unit tests
│   └── StickyNotesUITests/  # UI tests
├── Documentation/           # Documentation files
├── build_resources/         # Build resources
│   ├── icons/              # App icons
│   └── screenshots/        # App screenshots
├── scripts/                # Build and utility scripts
├── docs/                   # Additional documentation
├── archive/                # Archived/backup files
└── README.md               # This file
```

## 🧪 Testing

```bash
# Run all tests
xcodebuild test -scheme StickyNotes

# Run tests in watch mode
xcodebuild test -scheme StickyNotes -only-testing:StickyNotesTests

# Run tests with coverage
xcodebuild test -scheme StickyNotes -enableCodeCoverage YES

# Run specific test
xcodebuild test -scheme StickyNotes -only-testing:StickyNotesTests/NoteTests
```

## 📦 Build Configuration

The application uses standard Xcode build configuration with additional settings:

### Build Settings
- **Swift Language Version**: 5.10
- **macOS Deployment Target**: 13.0
- **Code Signing**: Development and distribution profiles
- **Architecture**: Universal (arm64 + x86_64)

### Capabilities
- **iCloud**: CloudKit sync and storage
- **App Sandbox**: Security sandboxing
- **Hardened Runtime**: Enhanced security features

## 🔧 Scripts

| Script | Description |
|--------|-------------|
| `build.sh` | Build application for all architectures |
| `test.sh` | Run unit and UI tests |
| `archive.sh` | Create distribution archive |
| `clean.sh` | Clean build artifacts |
| `docs.sh` | Generate documentation |

## 🎨 Design

### UI Components

- **Note Windows**: Resizable, floating windows with title bars
- **Text Editor**: Rich text editor with formatting toolbar
- **Color Picker**: Native macOS color picker integration
- **Search Bar**: Global search with real-time results
- **Sidebar**: Note list with filtering and sorting

### Design Principles

- **Native Feel**: Follows macOS Human Interface Guidelines
- **Accessibility**: VoiceOver and keyboard navigation support
- **Performance**: Optimized for smooth animations and responsiveness
- **Consistency**: Consistent with other macOS applications

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests or create issues for bug reports and feature requests.

### Development Setup

```bash
# Clone the repo
git clone https://github.com/sanchez314c/desktop-stickies.git
cd desktop-stickies

# Open in Xcode
open StickyNotes.xcodeproj

# Install dependencies (if any)
xcodebuild -resolvePackageDependencies

# Run in development mode
xcodebuild -scheme StickyNotes -configuration Debug build
```

### Code Style

- **Swift**: Follow Swift API Design Guidelines
- **Naming**: Use descriptive names for functions and variables
- **Comments**: Document public interfaces and complex logic
- **Testing**: Write unit tests for new features

### Submitting Changes

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Apple** - For SwiftUI, Core Data, and CloudKit frameworks
- **Swift Community** - For excellent tools and libraries
- **macOS Design Team** - For inspiration from native apps
- **Open Source Contributors** - For making this project possible

## 🔗 Links

- [Report Issues](https://github.com/sanchez314c/desktop-stickies/issues)
- [Request Features](https://github.com/sanchez314c/desktop-stickies/issues/new?labels=enhancement)
- [Discussions](https://github.com/sanchez314c/desktop-stickies/discussions)
- [Mac App Store](https://apps.apple.com/app/sticky-notes/id123456789)

---

**Desktop Stickies v1.0** - Professional Digital Sticky Notes for macOS
Made with AI!