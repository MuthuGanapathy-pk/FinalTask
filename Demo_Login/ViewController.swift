
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Login_Outlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Login_Outlet.layer.cornerRadius = Login_Outlet.frame.height/2
    }
    
    @IBAction func Login_Button(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "SecondPage_Story")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

