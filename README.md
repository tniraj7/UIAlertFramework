# UIAlertFramework
## A custom framework to show alert on certain events

### Installation
    . Select 'General' tab in project inspector
    . In 'Embedded Binaries' section, click '+', then 'Add Other'
    . Choose 'UIAlertFramework.xcodeproj, it will add up to project navigator
    . Go to Embedded Binaries and click '+', you can see the project that you added, select it
      to add to embedded binaries.
    
### Usage

```
import UIModal

let alertView = ModalView(frame: CGRect(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat))
let image = UIImage(named: String) ?? UIImage()
alertView(heading: String)
alertView(subheading: String)
alertView(image: image)
view.addSubview(alertView)  
```
### Contributing
Pull requests are welcome.
