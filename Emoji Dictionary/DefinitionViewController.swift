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
    
    @IBOutlet weak var categorieLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        
        emojiLabel.text = emoji.emojiSymbol
        yearLabel.text = "\(emoji.birthYear)"
        definitionLabel.text = emoji.definition
        categorieLabel.text = emoji.category
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
