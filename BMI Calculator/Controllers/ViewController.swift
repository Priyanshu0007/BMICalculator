import UIKit

class ViewController: UIViewController {
    var calculatorBrain=CalculatorBrain()
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height=String(format:"%.2f",sender.value)
        heightLabel.text="\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight=String(format:"%.0f",sender.value)
        weightLabel.text="\(weight)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculate(height:heightSlider.value,weight:weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="goToResult"){
            let destinationVc=segue.destination as! ResultViewController
            destinationVc.bmiValue=calculatorBrain.getBmiValue()
            destinationVc.advice=calculatorBrain.getBmiAdvice()
            destinationVc.color=calculatorBrain.getBmiColor()

        }
    }
}

