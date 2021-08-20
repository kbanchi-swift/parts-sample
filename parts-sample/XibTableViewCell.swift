//
//  XibTableViewCell.swift
//  parts-sample
//
//  Created by 伴地慶介 on 2021/08/20.
//

import UIKit

class XibTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        label.text = "Xib"
    }
}
