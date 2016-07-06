# Swift Snippets
A collection of Swift snippets to be used in Xcode

## Usage

- swifttrycatch

```swift
do {
  try <#code#>
} catch <#errortype#> {
  <#code#>
} catch <#errortype#> {
  <#code#>
}
```

- swiftassociatedobject

```swift
private struct AssociatedKeys {
  static var <#name#> = "<#name#>"
}

var <#name#>: String? {
  get {
    return objc_getAssociatedObject(self, &AssociatedKeys.<#name#>) as? String
  }

  set {
    if let newValue = newValue {
      objc_setAssociatedObject(self, &AssociatedKeys.<#name#>, newValue as String?,
        .OBJC_ASSOCIATION_RETAIN_NONATOMIC
      )
    }
  }
}
```

- swiftavailable

```swift
@available(iOS 7, *)
```

- swiftcheckavailability

```swift
if #available(iOS 9, *) {
  <#code#>
} else {
  <#code>
}
```

- swiftcheckversion

```swift
#if swift(>=3.0)
    <#code#>
#elseif swift(>=2.2)
    <#code#>
#elseif swift(>=2.1)
    <#code#>
#endif
```

- swiftcheckplatform

```swift
#if os(iOS) || os(tvOS)
  <#code#>
#elseif os(watchOS)
  <#code#>
#elseif os(OSX)
  <#code#>
#endif
```

## Installation

### Manual

Drag `codesnippet` files from `Snippets` into `/Library/Developer/Xcode/UserData/CodeSnippets`

### Automatic

## Author

Hyper Interaktiv AS, ios@hyper.no

## License

**Imaginary** is available under the MIT license. See the LICENSE file for more info.
