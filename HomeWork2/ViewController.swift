
import UIKit

class ViewController: UIViewController {
    @IBOutlet var redNumber: UILabel!
    
    @IBOutlet var blueNumber: UILabel!
    @IBOutlet var greenNumber: UILabel!
 
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var sliderRed: UISlider!
    
    @IBOutlet var sliderGreen: UISlider!
    
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 255
        sliderRed.minimumTrackTintColor = .red
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 255
        sliderBlue.minimumTrackTintColor = .blue
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 255
        sliderGreen.minimumTrackTintColor = .green
        
        
    }

    @IBAction func redChange(_ sender: Any) {
        redNumber.text = String(Int(sliderRed.value))
        colorSet(red: getColor().r, green: getColor().g, blue: getColor().b)
    }
    
    @IBAction func greenChange(_ sender: Any) {
        greenNumber.text = String(Int(sliderGreen.value))
        colorSet(red: getColor().r, green: getColor().g, blue: getColor().b)
    }
    
    @IBAction func blueChange(_ sender: Any) {
        blueNumber.text = String(Int(sliderBlue.value))
        colorSet(red: getColor().r, green: getColor().g, blue: getColor().b)

    }
    
    func getColor() -> (r: Int, g: Int, b : Int){
        
        return (Int(sliderRed.value), Int(sliderGreen.value),  Int(sliderBlue.value))
        
    }
    
    func colorSet(red: Int, green: Int, blue: Int)  {
        viewColor.backgroundColor = UIColor(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1)
    }
    
   
}

