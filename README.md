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
    <#API available statements#>
} else if #available(macOS 10.12, *) {
    <#API available statements#>
} else {
    <#fallback statements#>
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

- swiftdispatchafter

```swift
DispatchQueue.main.asyncAfter(deadline: .now() + <#time#>) {
  <#code#>
}
```

- swiftdispatchasync

```swift
DispatchQueue.global(qos: .background).async {
  <#code#>
}
```

- swiftdispatchonce

```swift
let <#name#>: <#type#> = {
  return <#code#>
}()
```

- swiftinitcoder

```swift
public required init?(coder aDecoder: NSCoder) {
  fatalError("init(coder:) has not been implemented")
}
```

- swiftmark

```swift
// MARK: - <#section#>
```

- swiftsubscript

```swift
subscript(<#name#>: <#type#>) -> <#type#> {
  get {
    return <#value#>
  }
  set(newValue) {
      <#code#>
  }
}
```

- swiftguardself

```swift
guard let `self` = self else {
  return
}
```

- swiftuitableviewdatasource
 ```swift
func numberOfSections(in tableView: UITableView) -> Int {
  return <#count#>
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  return <#count#>
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  <#code#>
}
 ```

- swiftuicollectionviewdatasource

```swift
func numberOfSections(in collectionView: UICollectionView) -> Int {
  return <#count#>
}

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
  return <#count#>
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
  <#code#>
}
```

- swiftuipickerviewdatasource

```swift
func numberOfComponents(in pickerView: UIPickerView) -> Int {
  return <#count#>
}

func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
  return <#count#>
}
```

## Installation

### Manual

Drag `codesnippet` files from `Snippets` into `/Library/Developer/Xcode/UserData/CodeSnippets`

### Automatic

Run this in your terminal

```
curl -fsSL https://raw.githubusercontent.com/hyperoslo/SwiftSnippets/master/install.sh | sh
```

## Author

Hyper Interaktiv AS, ios@hyper.no

## License

**SwiftSnippets** is available under the MIT license. See the LICENSE file for more info.
