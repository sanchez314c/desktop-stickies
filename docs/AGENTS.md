# StickyNotes Desktop - AI Development Guide

This document provides guidance for AI assistants (Claude, ChatGPT, etc.) working on the StickyNotes Desktop macOS application.

## 🎯 Project Overview

**Author**: Jasonn Michaels
**Repository**: https://github.com/sanchez314c/desktop-stickies
**Contact**: sanchez314c@jasonpaulmichaels.co
**Project Type**: Swift-based macOS desktop application
**Architecture**: MVVM with Core Data + CloudKit persistence
**Primary Language**: Swift 5.10+
**Target Platform**: macOS 13.0+ (Universal Binary)
**Development Environment**: Xcode 15.0+

## 🏗️ Architecture Overview

### Core Components

```
┌─────────────────────────────────────┐
│            Application Layer         │
├─────────────────────────────────────┤
│ • StickyNotesApp (App Entry Point) │
│ • SwiftUI Views                    │
│ • ViewModels (MVVM)                │
└─────────────────────────────────────┘
┌─────────────────────────────────────┐
│           Business Layer            │
├─────────────────────────────────────┤
│ • NoteService                      │
│ • BackgroundOperationManager       │
│ • MigrationManager                 │
└─────────────────────────────────────┘
┌─────────────────────────────────────┐
│          Data Layer                 │
├─────────────────────────────────────┤
│ • PersistenceController            │
│ • CoreDataNoteRepository           │
│ • Core Data Models                  │
│ • CloudKit Integration             │
└─────────────────────────────────────┘
```

### Key Design Patterns

1. **MVVM (Model-View-ViewModel)**
   - Views: SwiftUI components for UI
   - ViewModels: Handle presentation logic and state
   - Models: Core Data entities and business models

2. **Repository Pattern**
   - `NoteRepository` protocol defines data access interface
   - `CoreDataNoteRepository` implements Core Data operations
   - Enables testing and future data source changes

3. **Dependency Injection**
   - Services are injected into ViewModels
   - Enables better testability and modularity

4. **Combine Framework**
   - Reactive programming for data streams
   - Publishers for note changes and errors
   - Automatic UI updates on data changes

## 📁 Project Structure

```
desktop-stickies/
├── Sources/                        # Core Data persistence library
│   ├── PersistenceController.swift
│   ├── CoreDataNoteRepository.swift
│   ├── NoteService.swift
│   └── Models/
├── StickyNotes/                     # Main macOS app
│   ├── StickyNotesApp.swift         # App entry point
│   ├── Models/                      # Data models and entities
│   ├── Views/                       # SwiftUI views
│   ├── ViewModels/                  # MVVM view models
│   ├── Services/                    # Business logic services
│   └── Resources/                   # App resources and assets
├── Tests/                           # Unit and integration tests
│   ├── StickyNotesCoreTests/        # Core library tests
│   └── StickyNotesUITests/          # UI tests
├── scripts/                         # Build and utility scripts
├── docs/                           # Comprehensive documentation
└── fastlane/                       # Deployment automation
```

## 🛠️ Development Commands

### Building and Testing

```bash
# Build the project
xcodebuild -scheme StickyNotes -configuration Debug build

# Build for release
xcodebuild -scheme StickyNotes -configuration Release build

# Run all tests
xcodebuild test -scheme StickyNotes -destination 'platform=macOS'

# Run specific test class
xcodebuild test -scheme StickyNotes -destination 'platform=macOS' -only-testing:StickyNotesCoreTests/NoteRepositoryTests

# Code formatting
swiftformat .

# Linting
swiftlint .
```

### Package Management

```bash
# Resolve Swift Package Manager dependencies
swift package resolve

# Update dependencies
swift package update

# Generate Xcode project
swift package generate-xcodeproj
```

## 🧪 Testing Strategy

### Test Categories

1. **Unit Tests**: Test individual components in isolation
2. **Integration Tests**: Test component interactions
3. **Core Data Tests**: Test persistence layer with in-memory store
4. **CloudKit Tests**: Test sync functionality (when possible)

### Test Setup Patterns

```swift
// In-memory Core Data for testing
let persistenceController = PersistenceController(inMemory: true)

// Test repository with mock data
let repository = CoreDataNoteRepository(persistenceController: persistenceController)

// Clean up after tests
override func tearDown() {
    // Clear test data
    super.tearDown()
}
```

## 🔧 Key Implementation Details

### Core Data Integration

- **CloudKit Sync**: Enabled with automatic sync
- **Background Contexts**: All data operations use background contexts
- **Migrations**: Automatic migration handling for schema changes
- **Performance**: Efficient fetching with batch sizes

### Error Handling

- **Comprehensive Error Types**: Defined in `PersistenceError` and `ServiceError`
- **User-Friendly Messages**: Convert technical errors to user-friendly messages
- **Recovery**: Implement retry logic for network operations

### Memory Management

- **Weak References**: Use weak references for delegates and closures
- **Automatic Cleanup**: Clean up temporary objects and observers
- **Efficient Fetching**: Use fetch limits and batch sizes

## 📋 Development Guidelines

### Code Style

1. **Swift Conventions**: Follow standard Swift style guide
2. **Naming**: Use descriptive names for clarity
3. **Documentation**: Document public APIs with proper comments
4. **Access Control**: Use appropriate access modifiers

### Best Practices

1. **Async/Await**: Use modern Swift concurrency
2. **Combine**: Use reactive programming for UI updates
3. **Dependency Injection**: Inject dependencies for testability
4. **Error Handling**: Handle errors gracefully at all layers

### Security Considerations

1. **CloudKit Security**: Ensure proper CloudKit container security
2. **Data Validation**: Validate user input and external data
3. **Local Storage**: Use Core Data's built-in security features

## 🚨 Common Issues and Solutions

### CloudKit Sync Issues

**Problem**: Sync not working properly
**Solution**:
- Check iCloud account status
- Verify CloudKit container configuration
- Check network connectivity
- Review CloudKit dashboard for errors

### Core Data Performance

**Problem**: Slow data fetching
**Solution**:
- Use fetch requests with predicates
- Implement batch fetching for large datasets
- Use background contexts for heavy operations
- Add appropriate indexes in the data model

### Memory Leaks

**Problem**: Memory usage increasing over time
**Solution**:
- Check for retain cycles in closures
- Use weak references for delegates
- Clean up Combine subscriptions
- Profile with Instruments

## 📚 Important Files

### Core Application Files

- `StickyNotes/StickyNotesApp.swift` - App entry point
- `Sources/PersistenceController.swift` - Core Data stack management
- `Sources/NoteService.swift` - Main business logic service
- `Sources/CoreDataNoteRepository.swift` - Data access layer

### Configuration Files

- `Package.swift` - Swift Package Manager configuration
- `StickyNotes.xcconfig` - Build configuration
- `Info.plist` - App metadata and permissions

### Build and Deployment

- `.github/workflows/build-and-release.yml` - CI/CD pipeline
- `fastlane/Fastfile` - Deployment automation
- `scripts/build-macos.sh` - Build script

## 🔄 Workflow for AI Assistants

### When Making Changes

1. **Understand the Request**: Clarify requirements before implementing
2. **Check Existing Code**: Look for similar implementations first
3. **Follow Architecture**: Adhere to established patterns and conventions
4. **Add Tests**: Include appropriate tests for new functionality
5. **Update Documentation**: Update relevant documentation if needed
6. **Verify Changes**: Test thoroughly before submitting

### Debugging Approach

1. **Identify the Issue**: Understand symptoms and error messages
2. **Locate the Source**: Use logs and debugging tools
3. **Isolate the Problem**: Create minimal reproduction case
4. **Implement Fix**: Make targeted, minimal changes
5. **Test Solution**: Verify fix works and doesn't break other functionality

### Performance Optimization

1. **Profile First**: Use Instruments to identify bottlenecks
2. **Optimize Data Access**: Improve Core Data queries
3. **Reduce Memory Usage**: Optimize object lifecycle management
4. **Improve UI Responsiveness**: Use background operations properly

## 🎯 Development Priorities

1. **Stability**: Ensure app is stable and doesn't crash
2. **Performance**: Optimize for smooth user experience
3. **Sync Reliability**: Ensure CloudKit sync works reliably
4. **User Experience**: Improve UI/UX based on user feedback
5. **Code Quality**: Maintain clean, well-tested code

## 📞 Getting Help

When stuck or uncertain:
1. Check existing documentation in `docs/` folder
2. Look at similar implementations in the codebase
3. Ask for clarification on requirements
4. Consider the impact on CloudKit sync and performance

---

**Remember**: This is a macOS desktop application with CloudKit synchronization. Always consider the implications of changes on data sync, performance, and user experience.