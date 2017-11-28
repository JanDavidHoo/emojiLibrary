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
    
    var emojis = ["🙂","😶","😱","😊","👩🏼‍🔬","🤡","🤠","🇹🇬","💖","🎁"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

