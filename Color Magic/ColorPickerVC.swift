//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by Pieter Kuijsten on 02/07/2018.
//  Copyright © 2018 Pieter Kuijsten. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegateInColorPickerVC: ColorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorBtnWasPressed(sender: UIButton) {
        delegateInColorPickerVC?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        
        self.navigationController?.popViewController(animated: true)    }
}
