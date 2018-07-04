//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Pieter Kuijsten on 02/07/2018.
//  Copyright © 2018 Pieter Kuijsten. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
