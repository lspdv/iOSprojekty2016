//
//  ViewController.swift
//  nejsuprazak
//
//  Created by Veronika Gabrielová on 30/04/16.
//  Copyright © 2016 Veronika Gabrielová. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cudlicek: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("a jsme tady")
        cudlicek.text = "Tohle je prej text"
    }
    
    
    @IBAction func drakovoCudlik(sender: UISegmentedControl) {
        // cudlicek.text = String(sender.selectedSegmentIndex)
        if sender.selectedSegmentIndex == 1 {
        cudlicek.text = "tě zdravim!"
        }
        else if sender.selectedSegmentIndex == 2{
            cudlicek.text = "nespi!"
        }
        else {
            cudlicek.text = "už jsi tu zase?!"
        }
   }

}
    //override func didReceiveMemoryWarning() {
        //super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}