# cp_crud

Simple CRUD (Create Read Update Delete) app with sqlite and flutter.

# App: Contacts

This app will allow you to:
1. Create a contact with a name and phone number
2. View all contacts
3. Edit contact by either editing their name or phone number
4. Delete a contact

# Dependencies
## Windows:
- sqlite3.dll [download](https://www.sqlite.org/2025/sqlite-dll-win-x64-3480000.zip)

# Initializing the project
clone the repo and then run:
```sh
flutter create .
```

# Testing
```sh
flutter test
```

# Building for release
macOS
```sh
flutter build macos --release
```
When running, the user must first run:
```sh
xattr -d com.apple.quarantine ./cp_crud
```

# Next steps
- [ ] add "Update" functionality
- [ ] Get subscriptions in eventBus to be able to handle args
- [ ] Separate dbaccess from eventbus
- [ ] Compile for windows
- [ ] Compile for web
- [ ] Compile for android
- [ ] Compile for iphone

# Useful websites
- [Flutter sqflite tutorial](https://docs.flutter.dev/cookbook/persistence/sqlite)
- [Writing platform specific code](https://docs.flutter.dev/platform-integration/platform-channels)
- [Flutter concurrency](https://docs.flutter.dev/perf/isolates)
- [Sqflite common ffi Stack overflow](https://stackoverflow.com/questions/76158800/databasefactory-not-initialized-when-using-sqflite-in-flutter)
- [Sqflite_common_ffi works on every platform ig](https://pub.dev/packages/sqflite_common_ffi)
- [DB Browser for sqlite](https://sqlitebrowser.org/dl/)