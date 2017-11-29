//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by David Hoogerheide on 28/11/2017.
//  Copyright © 2017 David Hoogerheide. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var dacooltableview: UITableView!
    
    @IBAction func theButton(_ sender: Any) {
 
    }
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.emojiSymbol
    
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
        let defVC = segue.destination as!
            DefinitionViewController
        defVC.emoji = sender as! Emoji
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.emojiSymbol = "🙂"
        emoji1.definition = "It's a smiley face"
        emoji1.category = "Face"
        emoji1.birthYear = 2011
        
        let emoji2 = Emoji()
        emoji2.emojiSymbol = "😶"
        emoji2.definition = "It's a noface"
        emoji2.category = "Face"
        emoji2.birthYear = 2004
        
        let emoji3 = Emoji()
        emoji3.emojiSymbol = "😱"
        emoji3.definition = "It's a freaked out face"
        emoji3.category = "Face"
        emoji3.birthYear = 2001
        
        let emoji4 = Emoji()
        emoji4.emojiSymbol = "😊"
        emoji4.definition = "It's a blushy face"
        emoji4.category = "Face"
        emoji4.birthYear = 2011
        
        let emoji5 = Emoji()
        emoji5.emojiSymbol = "👩🏼‍🔬"
        emoji5.definition = "It's a doctor"
        emoji5.category = "Jobs"
        emoji5.birthYear = 2012
        
        let emoji6 = Emoji()
        emoji6.emojiSymbol = "🤡"
        emoji6.definition = "It's a clown"
        emoji6.category = "Jobs"
        emoji6.birthYear = 2015
        
        let emoji7 = Emoji()
        emoji7.emojiSymbol = "🤠"
        emoji7.definition = "It's a cowboy"
        emoji7.category = "NERDS"
        emoji7.birthYear = 2016
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    
    }
    
}

