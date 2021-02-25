//
/* 
 *		Created by 游宗諭 in 2021/2/25
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 10.15
 */


import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var label: NSTextField!
    
    @IBAction func didTapButton(_ sender: NSButton) {
        label.stringValue = "Hello, GitHub!!"
    }
    /**
     awakeFromNib === viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        label.font = NSFont(name: "Herculanum", size: 15)
    }
     */
    override func awakeFromNib() {
        super.awakeFromNib()
        label.font = NSFont(name: "Herculanum", size: 15)
        label.textColor = .red
        label.backgroundColor = .blue
        label.drawsBackground = true
        label.isSelectable = true
    }
}

