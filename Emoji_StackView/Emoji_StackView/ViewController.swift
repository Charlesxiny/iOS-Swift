//
//  ViewController.swift
//  Emoji_StackView
//
//  Created by Xenosxiny on 16/9/2.
//  Copyright © 2016年 Xenosxiny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var emojiCollection: [UIButton]!{
        didSet{
            emojiCollection.forEach {
                $0.hidden = true
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func displayEmoji(sender: UIButton) {
        UIView.animateWithDuration(1) {
            self.emojiCollection.forEach({
                $0.hidden = !$0.hidden
            })
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

