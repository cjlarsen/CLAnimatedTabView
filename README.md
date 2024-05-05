## CLAnimatedTabView
Reusable SwiftUI View with a top tab bar and animated capsule.  
Allows the ability to pass in views of the same type displayed as pages, selectable with top tab bar.

### How to add to a project
Able to be added using [Swift Package Manager](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app)

### Example
https://github.com/cjlarsen/CLAnimatedTabView/assets/908625/63c2ac3b-4bb6-4cd7-89b2-e24a10e09f5d

### Example Implementation
```
import SwiftUI
import CLAnimatedTabView

struct ContentView: View {
    var body: some View {
        let viewModel = CLAnimatedTabViewModel(tabBarHeight: 69.0, tabNames: ["Tab 1", "Tab 2", "Tab 3"])
        CLAnimatedTabView(viewModel: viewModel,
            Text("1"),
            Text("2"),
            Text("3")
        )
    }
}
```
