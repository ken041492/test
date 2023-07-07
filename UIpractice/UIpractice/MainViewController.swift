//
//  MainViewController.swift
//  UIpractice
//
//  Created by imac-1682 on 2023/7/6.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var palatte: UIView!
    @IBOutlet weak var red_slider: UISlider!
    @IBOutlet weak var green_slider: UISlider!
    @IBOutlet weak var blue_slider: UISlider!
    @IBOutlet weak var red_textfield: UITextField!
    @IBOutlet weak var green_textfield: UITextField!
    @IBOutlet weak var blue_textfield: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Changeview(_ render: UISlider){
        palatte.backgroundColor = UIColor(
            red: CGFloat((red_slider.value/255)),
            green: CGFloat((green_slider.value/255)),
            blue: CGFloat((blue_slider.value/255)),
            alpha: 1
        )
    }
    @IBAction func Changeview_text(_ render: UITextField){
        if let redValue = Float(red_textfield.text ?? ""),
           let greenValue = Float(green_textfield.text ?? ""),
           let blueValue = Float(blue_textfield.text ?? "") {
            let red = CGFloat(redValue / 255.0)
            let green = CGFloat(greenValue / 255.0)
            let blue = CGFloat(blueValue / 255.0)
            palatte.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
    
    @IBAction func ChangeText(_ render: UISlider){
        red_textfield.text = "\(Int(red_slider.value))"
        green_textfield.text = "\(Int(green_slider.value))"
        blue_textfield.text = "\(Int(blue_slider.value))"
    }
    @IBAction func UppdateText(_ render: UITextField){
        if let red_string_text = red_textfield.text{
            if let red_float_text = Float(red_string_text){
                
                red_slider.setValue(red_float_text, animated: true)
            }
        }
        if let green_string_text = green_textfield.text{
            if let green_float_text = Float(green_string_text){
                
                green_slider.setValue(green_float_text, animated: true)
            }
        }
        if let blue_string_text = blue_textfield.text{
            if let blue_float_text = Float(blue_string_text){

                blue_slider.setValue(blue_float_text, animated: true)
                
            }
        }
        
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
