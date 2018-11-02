
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var drawView: DrawView!

    @IBAction func btnClearAction(_ sender: Any) {
        drawView.clear()
    }
    
    @IBAction func btnRedAction(_ sender: Any) {
        drawView.strokeColor = UIColor.red.cgColor
    }
    
    @IBAction func btnBlueAction(_ sender: Any) {
           drawView.strokeColor = UIColor.blue.cgColor
    }
    
    @IBAction func btnGreenAction(_ sender: Any) {
        drawView.strokeColor = UIColor.green.cgColor
    }
}

