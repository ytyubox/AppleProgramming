//
/* 
 *		Created by 游宗諭 in 2021/2/26
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 10.15
 */


import Cocoa

class ViewController: NSViewController {
    @IBOutlet private weak var label: NSTextField!
    @IBOutlet private weak var nameField: NSTextField!
    @IBOutlet private weak var datePicker: NSDatePicker!
    @IBOutlet private weak var showButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.dateValue = Date()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func didTapShowButton(_ sender: NSButton) {
        let str = "\(nameField.stringValue) was here at \(datePicker.dateValue)"
        label.stringValue = str
    }
}

