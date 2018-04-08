# Running Swiftly

A description of this package.

- Create a project using
```
swift package init --type=executable
swift package generate-xcodeproj
```

Update `Package.swift`.
Example

```
import PackageDescription

let package = Package(
name: "VaporTry",
dependencies: [
.package(url: "https://github.com/vapor/json.git", from: "2.0.0")
],
targets: [
packages which this package depends on.
.target(
name: "VaporTry",
dependencies: ["JSON"]),
]
)

```
Then run
`swift package update`
`swift package generate-xcodeproj`



