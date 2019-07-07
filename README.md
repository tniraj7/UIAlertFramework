# UIAlertFramework
## A custom framework to show alert on certain events

### Installation
    . Select 'General' tab in project inspector
    . In 'Embedded Binaries' section, click '+', then 'Add Other'
    . Choose 'UIAlertFramework.xcodeproj, it will add up to project navigator
    . Go to Embedded Binaries and click '+', you can see the project that you added, select it
      to add to embedded binaries.
### Install via Pod
#### Download an place the [Pod](https://github.com/tniraj7/UIAlertPod) at the root of your project

#### Create a podfile at the root of your project using below command
```
pod init
```
#### Replace with following contents in the generated Podfile
```
# Podfile
 platform :ios, '11.0'

target 'YOUR_TARGET_NAME' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for YOUR_TARGET_NAME
  pod 'UIModal', :path => './Pod'
end
```
#### Run this to install Pod
```
pod install
```

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

### Preview
![](UIAlert.gif)

### Contributing
Pull requests are welcome.
