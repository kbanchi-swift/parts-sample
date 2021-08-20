//
//  TableViewCellViewController.swift
//  parts-sample
//
//  Created by 伴地慶介 on 2021/08/20.
//

import UIKit

class TableViewCellViewController: UIViewController {
    
    var name : String = "No Selected"

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = name

    }
    
}
