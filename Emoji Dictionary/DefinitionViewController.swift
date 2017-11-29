//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by David Hoogerheide on 28/11/2017.
//  Copyright © 2017 David Hoogerheide. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    var definitionDescription = "FUCK"
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if emoji == "🙂" {
            definitionDescription = "It's a smiley face"
        }
        
        if emoji == "😶" {
            definitionDescription = "It's noface"
        }
        
        if emoji == "😱" {
            definitionDescription = "It's a freaked out face"
        }
        
        if emoji == "😊" {
            definitionDescription = "It's a blushy face"
        }
        
        if emoji == "👩🏼‍🔬" {
            definitionDescription = "It's a docter"
        }
        
        if emoji == "🤡" {
            definitionDescription = "It's a clown"
        }
        if emoji == "🤠" {
            definitionDescription = "It's a cowboy"
        }
        if emoji == "🇹🇬" {
            definitionDescription = "It's a flag"
        }
        if emoji == "💖" {
            definitionDescription = "It's a heart"
        }
        if emoji == "🎁" {
            definitionDescription = "It's a gift "
        }
        
        
        emojiLabel.text = emoji
        definitionLabel.text = definitionDescription
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
