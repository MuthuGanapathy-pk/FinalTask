
import UIKit

class SecondPage_ViewController: UIViewController {

    @IBOutlet weak var SecondPage_Outlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        SecondPage_Outlet.layer.cornerRadius = SecondPage_Outlet.frame.height/2
    }
    @IBAction func SecondPage_button(_ sender: UIButton) {
      
    }
    
}
