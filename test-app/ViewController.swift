
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        height.delegate = self
        
        
        weight.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var height: UITextField!
    

    @IBOutlet var weight: UITextField!
    
    
    
    @IBOutlet var calcBtn: UIButton!

    @IBOutlet var resultArea: UILabel!

    @IBAction func calcBMI(sender: AnyObject) {
        var heightString = self.height.text
        var weightString = self.weight.text
        
        if(heightString == "" || weightString == ""){
            resultArea.text = "値を入力してください"
            return;
        }

        
        var heightValue = (heightString as NSString).floatValue
        var weightValue = (weightString as NSString).floatValue

        var result = calculation(h: heightValue, w: weightValue)
        
        var resultText : String
        resultText = "あなたの身長:\(heightString)cm  体重:\(weightString)kg\n\n"
        resultText += "BMIは\(result.calcBMI()) です　\n\n"
        resultText += "あなたの適正体重は\(result.calcStdWight())kg です　\n\n"
        resultText += "判定：あなたは「\(result.judge())」 です"
        
        self.resultArea.numberOfLines = 8
        self.resultArea.text = resultText
        
        return;
        
    }
}

