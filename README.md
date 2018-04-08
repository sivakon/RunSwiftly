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

## Step 2 (Using Nifty - numpy like)
- Install `lapack`
`brew install lapack`
- Install `openblas`
`brew install openblas`
- Update `Package.swift`
`.package(url: "https://github.com/nifty-swift/Nifty.git", from: "1.0.0")`

Swift compiler should know the **LDFLAGS** variable. (Taken from `Nifty` package from Github.)
`swift build -Xlinker -L/usr/local/opt/lapack/lib -Xlinker -L/usr/local/opt/openblas/lib`

In XCode, under **Project**, we add linker flags in **Other Linker flags** section. Add all the flags mentioned above.



