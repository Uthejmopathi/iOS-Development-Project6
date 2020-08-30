//
//  ViewController.swift
//  Assignment6
//
//  Created by Uthej Mopathi on 8/27/20.
//  Copyright © 2020 Uthej Mopathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var temperatureLabelFarenheit: UITextField!
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var segmentedPage: UISegmentedControl!
    @IBOutlet weak var temperatureEntryTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        temperatureEntryTextField.keyboardType = UIKeyboardType.decimalPad
        temperatureLabelFarenheit.keyboardType = UIKeyboardType.decimalPad
        temperatureLabelFarenheit.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func texfieldCharecteristics(_ sender: Any) {
        temperatureEntryTextField.keyboardType = UIKeyboardType.decimalPad
        temperatureLabelFarenheit.keyboardType = UIKeyboardType.decimalPad
    }
    
    
    @IBAction func segmentChanged(_ sender: Any) {
        
        switch segmentedPage.selectedSegmentIndex {
        case 0: let temperatureValue = Double(temperatureEntryTextField.text!)
        temperatureLabelFarenheit.isHidden = true
        temperatureEntryTextField.isHidden = false
        temperatureLabel.text = String (temperatureValue!)
            if temperatureValue! > 0 && temperatureValue! <= 20 {
                                  backgroundView.backgroundColor = UIColor.blue
                                  
                              }
                              else if temperatureValue! > 20 && temperatureValue!<=40 {
                                  backgroundView.backgroundColor = UIColor.purple
                              }
                              else if temperatureValue!  > 40 && temperatureValue! <= 60  {
                                         backgroundView.backgroundColor = UIColor.yellow
                                     }
                              else if temperatureValue! > 60 && temperatureValue!<=80 {
                                         backgroundView.backgroundColor = UIColor.orange
                                     }
                              else if temperatureValue! > 80 {
                                         backgroundView.backgroundColor = UIColor.red
                                     }
        default:
            temperatureLabelFarenheit.isHidden = false
            temperatureEntryTextField.isHidden = true
            let temperatureValue = Double(temperatureEntryTextField.text!)
            let fahrenheitValue = (temperatureValue! * (9/5)) + 32
            temperatureLabel.text = String( fahrenheitValue)
                   if fahrenheitValue > 0 && fahrenheitValue<=20 {
                       backgroundView.backgroundColor = UIColor.blue
                       
                   }
                   else if fahrenheitValue > 20 && fahrenheitValue<=40 {
                       backgroundView.backgroundColor = UIColor.purple
                   }
                   else if fahrenheitValue  > 40 && fahrenheitValue <= 60  {
                              backgroundView.backgroundColor = UIColor.yellow
                          }
                   else if fahrenheitValue > 60 && fahrenheitValue<=80 {
                              backgroundView.backgroundColor = UIColor.orange
                          }
                   else if fahrenheitValue > 80 {
                              backgroundView.backgroundColor = UIColor.red
                          }
                   
            }
        }

    @IBAction func segmentedPagetwo(_ sender: Any) {
        switch segmentedPage.selectedSegmentIndex {
               case 1: let temperatureValue = Double(temperatureLabelFarenheit.text!)
               temperatureLabelFarenheit.isHidden = false
               temperatureEntryTextField.isHidden = true
               temperatureLabel.text = String (temperatureValue!)
                   if temperatureValue! > 0 && temperatureValue! <= 20 {
                                         backgroundView.backgroundColor = UIColor.blue
                                         
                                     }
                                     else if temperatureValue! > 20 && temperatureValue!<=40 {
                                         backgroundView.backgroundColor = UIColor.purple
                                     }
                                     else if temperatureValue!  > 40 && temperatureValue! <= 60  {
                                                backgroundView.backgroundColor = UIColor.yellow
                                            }
                                     else if temperatureValue! > 60 && temperatureValue!<=80 {
                                                backgroundView.backgroundColor = UIColor.orange
                                            }
                                     else if temperatureValue! > 80 {
                                                backgroundView.backgroundColor = UIColor.red
                                            }
               default:
                   temperatureLabelFarenheit.isHidden = true
                   temperatureEntryTextField.isHidden = false
                   let temperatureValue = Double(temperatureLabelFarenheit.text!)
                   let fahrenheitValue = Double(temperatureValue! - 32) * (5/9)
                   temperatureLabel.text = String( fahrenheitValue)
                          if fahrenheitValue > 0 && fahrenheitValue<=20 {
                              backgroundView.backgroundColor = UIColor.blue
                              
                          }
                          else if fahrenheitValue > 20 && fahrenheitValue<=40 {
                              backgroundView.backgroundColor = UIColor.purple
                          }
                          else if fahrenheitValue  > 40 && fahrenheitValue <= 60  {
                                     backgroundView.backgroundColor = UIColor.yellow
                                 }
                          else if fahrenheitValue > 60 && fahrenheitValue<=80 {
                                     backgroundView.backgroundColor = UIColor.orange
                                 }
                          else if fahrenheitValue > 80 {
                                     backgroundView.backgroundColor = UIColor.red
                                 }
                          
                   }
               }

    
    @IBAction func submitButtonTapped(_ sender: Any) {
        if segmentedPage.selectedSegmentIndex == 0{
        segmentChanged(segmentedPage.selectedSegmentIndex)
        }
        else if segmentedPage.selectedSegmentIndex == 1{
        segmentedPagetwo(segmentedPage.selectedSegmentIndex)
        }
       
    }
}
