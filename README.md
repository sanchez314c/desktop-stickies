# StickyNotes Core Data Persistence Layer

A robust, CloudKit-integrated Core Data persistence layer for the macOS StickyNotes application.

## Features

- **Core Data Integration**: Full Core Data stack with CloudKit synchronization
- **CloudKit Sync**: Automatic iCloud synchronization across devices
- **Background Operations**: Asynchronous operations for bulk imports/exports
- **Migration Support**: Automatic schema migration handling
- **Error Handling**: Comprehensive error handling and recovery
- **Repository Pattern**: Clean separation of data access logic
- **Reactive Updates**: Combine-based reactive data streams

## Architecture

### Core Components

```
┌─────────────────────────────────────┐
│         Persistence Layer           │
├─────────────────────────────────────┤
│ • PersistenceController             │
│ • NoteRepository (Protocol)         │
│ • CoreDataNoteRepository            │
│ • NoteService                       │
│ • BackgroundOperationManager        │
│ • MigrationManager                  │
└─────────────────────────────────────┘
```

### Data Flow

1. **ViewModels** interact with `NoteService`
2. **NoteService** coordinates with `NoteRepository`
3. **NoteRepository** performs Core Data operations
4. **PersistenceController** manages the Core Data stack
5. **CloudKit** handles synchronization in the background

## Usage

### Initialization

```swift
// The persistence layer is automatically initialized
let persistenceController = PersistenceController.shared
let noteService = NoteService.shared
```

### Basic CRUD Operations

```swift
// Create a note
let note = try await noteService.createNote(
    title: "My Note",
    content: "Note content",
    color: .yellow
)

// Fetch all notes
let notes = try await noteService.getAllNotes()

// Update a note
var updatedNote = note
updatedNote.content = "Updated content"
try await noteService.updateNote(updatedNote)

// Delete a note
try await noteService.deleteNote(withId: note.id)
```

### Search and Filter

```swift
// Search notes
let searchResults = try await noteService.searchNotes(containing: "keyword")

// Filter by color
let yellowNotes = try await noteService.getNotes(withColor: .yellow)

// Filter by tags
let taggedNotes = try await noteService.getNotes(withTags: ["important", "work"])
```

### Background Operations

```swift
// Bulk import from JSON
let operationId = BackgroundOperationManager.shared.importNotes(from: jsonData)

// Export all notes
let exportId = BackgroundOperationManager.shared.exportNotes(to: exportURL)

// Monitor operation status
BackgroundOperationManager.shared.operationStatusPublisher
    .sink { status in
        switch status.type {
        case .completed:
            print("Operation \(status.operationId) completed")
        case .failed:
            print("Operation failed: \(status.error?.localizedDescription ?? "")")
        default:
            break
        }
    }
```

### Reactive Updates

```swift
// Subscribe to note changes
noteService.notesPublisher
    .sink { notes in
        // Update UI with new notes
        updateUI(with: notes)
    }
    .store(in: &cancellables)

// Subscribe to errors
noteService.errorPublisher
    .sink { error in
        // Handle error
        showError(error)
    }
    .store(in: &cancellables)
```

## CloudKit Integration

### Setup Requirements

1. **iCloud Capability**: Enable iCloud in your app's capabilities
2. **CloudKit Container**: Create a CloudKit container in CloudKit Dashboard
3. **Entitlements**: Add iCloud entitlements to your app

### Container Identifier

The default container identifier is `iCloud.com.stickynotes.app`. Update this in:
- `PersistenceController.init()`
- Your app's entitlements file

### Sync Status

```swift
// Check sync availability
let isAvailable = await noteService.isCloudSyncAvailable()

// Monitor sync status
persistenceController.syncStatusPublisher
    .sink { status in
        switch status {
        case .available:
            print("iCloud available")
        case .syncing:
            print("Syncing...")
        case .synced:
            print("Sync completed")
        case .error:
            print("Sync error")
        default:
            break
        }
    }
```

## Data Model

### Note Entity

```swift
struct Note {
    let id: UUID
    var title: String
    var content: String
    var color: NoteColor
    var position: CGPoint
    var size: CGSize
    var createdAt: Date
    var modifiedAt: Date
    var isMarkdown: Bool
    var isLocked: Bool
    var tags: [String]
}
```

### Core Data Attributes

- `id`: UUID (Primary Key)
- `title`: String
- `content`: String
- `color`: String (NoteColor raw value)
- `positionX`, `positionY`: Double
- `width`, `height`: Double
- `createdAt`, `modifiedAt`: Date
- `isMarkdown`, `isLocked`: Bool
- `tags`: Transformable ([String])

## Error Handling

The persistence layer provides comprehensive error handling:

```swift
enum PersistenceError: LocalizedError {
    case saveFailed(Error)
    case fetchFailed(Error)
    case deleteFailed(Error)
    case cloudKitError(Error)
    case syncFailed(Error)
    case invalidData
}

enum ServiceError: LocalizedError {
    case createFailed(Error)
    case fetchFailed(Error)
    case updateFailed(Error)
    case deleteFailed(Error)
    case searchFailed(Error)
    case syncError
    case persistenceError(PersistenceError)
    case noteNotFound
}
```

## Performance Optimizations

### Background Operations
- All heavy operations run on background threads
- Batch processing for bulk operations
- Progress reporting for long-running tasks

### Memory Management
- Efficient fetching with batch sizes
- Automatic cleanup of temporary objects
- Lazy loading for large datasets

### Core Data Optimizations
- Proper context management
- Efficient query planning
- Automatic merge policies for CloudKit sync

## Migration Support

The layer includes automatic migration handling:

```swift
// Migrations are handled automatically on store load
// Custom migration logic can be added in MigrationManager
```

For complex migrations, implement custom mapping models in the MigrationManager.

## Testing

### Unit Tests

```swift
class NoteRepositoryTests: XCTestCase {
    var repository: CoreDataNoteRepository!
    var persistenceController: PersistenceController!

    override func setUp() {
        persistenceController = PersistenceController(inMemory: true)
        repository = CoreDataNoteRepository(persistenceController: persistenceController)
    }

    func testCreateNote() async throws {
        let note = Note(title: "Test", content: "Content", color: .yellow)
        try await repository.saveNote(note)

        let fetched = try await repository.fetchNote(withId: note.id)
        XCTAssertEqual(fetched?.title, "Test")
    }
}
```

### Integration Tests

Test the full stack including CloudKit simulation and background operations.

## Requirements

- **iOS/macOS**: 12.0+
- **Swift**: 5.9+
- **Xcode**: 14.0+

## Documentation

For comprehensive documentation, see the [docs/](docs/) directory:

- **[User Guide](docs/user/user-guide.md)** - Complete user manual
- **[Developer Guide](docs/developer/contributing.md)** - Development setup and contribution guidelines
- **[Architecture](docs/architecture/architecture-overview.md)** - System design and architecture
- **[API Reference](docs/developer/api-reference.md)** - Complete API documentation
- **[Testing](docs/testing/testing-strategy.md)** - Testing strategy and procedures

## Installation

1. Add the package to your Swift Package Manager dependencies
2. Import the module: `import StickyNotesCore`
3. Initialize the persistence layer in your AppDelegate

## Contributing

1. Follow the established architecture patterns
2. Add comprehensive tests for new features
3. Update documentation for API changes
4. Ensure CloudKit compatibility

## License

This persistence layer is part of the StickyNotes application.