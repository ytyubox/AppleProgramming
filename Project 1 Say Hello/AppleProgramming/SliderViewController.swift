//
/* 
 *		Created by 游宗諭 in 2021/2/26
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 10.15
 */


import Cocoa

class SliderViewController: NSViewController {

    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var slider: NSSliderCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#function)
//        slider.target = self
//        slider.action = #selector(didChangeSlider_(_:))
    }
    override func awakeFromNib() {
        print(#function)
        slider.target = self
        slider.action = #selector(didChangeSlider_(_:))
            
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func didChangeSlider(_ sender: NSSlider) {
//        label.intValue = sender.intValue
        print(#line)
        
    }
    
    @objc func didChangeSlider_(_ sender: NSSlider) {
        label.intValue = sender.intValue
        
        print(#line)
    }
}

