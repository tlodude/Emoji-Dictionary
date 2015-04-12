//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Tom Long on 4/11/15.
//  Copyright (c) 2015 Tolo Labs. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate    {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😄","😔","😱","😡","😝","😳","❤️"]
    
    var emojisDefinitions = ["Happyness","Sadness","Fear","Anger","Disgust","Suprise","Love"]
    
    var emoji = "👖"
    
    var emojiDefinition = "emoji label"
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.emojiDefinition = self.emojisDefinitions[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as! EmojiDetailViewController
        detailViewController.emoji = self.emoji
        detailViewController.emojiDefinition = self.emojiDefinition
    }
}

