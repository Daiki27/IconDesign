# IconDesign
<img width="548" alt="V1" src="https://user-images.githubusercontent.com/27540739/88386598-b1125a00-cdeb-11ea-95d1-f9a497cdad49.png">

|デザイン|Rerturn|Trash|Save|Camera|
|:---|:---|:---|:---|:---|
|Swift|Return_Design|Trash_Design|Save_Design|Camera_Design|

## Usage
[Grammer]
```swift
#引数：frame:ここで指定したサイズのフレーム内に描画される.
let button = Return_Design(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
```

[Example]
```swift

import UIKit
import IconDesign

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //ここでボタンデザインを決定する.
        let button = Camera_Design(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        button.backgroundColor = UIColor.lightGray
        view.addSubview(button)
    }
}

```

## Feature
 - [x] Easy to use
 - [x] Simple Icon Design
 - [x] Lightweight Library
 
## Installation


### CocoaPods
 - 
 - 

## Requirements
 - ios 13.6 or later

## Contributing


## Author

 - Daiki Higuchi

## License

ImageTransition is released under the MIT license. See [LICENSE](https://github.com/shtnkgm/BondiBlue/blob/master/LICENSE) for details.
