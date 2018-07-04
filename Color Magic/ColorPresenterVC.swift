//
//  ViewController.swift
//  Color Magic
//
//  Created by Pieter Kuijsten on 02/07/2018.
//  Copyright © 2018 Pieter Kuijsten. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
    
        
    @IBOutlet weak var colerNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colerNameLbl.text = colorName
        
        if colerNameLbl.text == "Yellow" {
            colerNameLbl.textColor = UIColor.black
            } else {
                colerNameLbl.textColor = UIColor.white
            }
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let targetView = segue.destination as? ColorPickerVC
        else {
            return
        }
            targetView.delegateInColorPickerVC = self
            print(self)
        }
    }
}


