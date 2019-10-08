//
//  ViewController.swift
//  PassDataTask1
//
//  Created by Mohamed on 10/8/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }

    @IBAction func btn_send(_ sender: UIButton) {
        
        text = nameTF.text!
        
        performSegue(withIdentifier: "segueroad", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! SecondViewController
        
        vc.result = text
        
       // present(vc, animated: true)
        
    }
    
}

