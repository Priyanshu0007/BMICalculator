import UIKit

class ResultViewController: UIViewController {
    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var BMILabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text=bmiValue
        adviceLabel.text=advice
        self.view.backgroundColor=color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
