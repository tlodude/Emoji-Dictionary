//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Tom Long on 4/11/15.
//  Copyright (c) 2015 Tolo Labs. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
   
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji = "👖"
    
    var emojiDefinition = "emoji label"
    
    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
        self.emojiDefinitionLabel.text = self.emojiDefinition
    }
}

