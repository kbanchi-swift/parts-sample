//
//  XibViewController.swift
//  parts-sample
//
//  Created by 伴地慶介 on 2021/08/20.
//

import UIKit

class XibViewController: UIViewController {

    var list = ["Apple","Lemon","Banana"]
    
    private let cellId = "cellId"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "XibTableViewCell", bundle: nil), forCellReuseIdentifier: cellId)

    }
    
}

extension XibViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        return cell
    }
    
}
