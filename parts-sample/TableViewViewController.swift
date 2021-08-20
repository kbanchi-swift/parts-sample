//
//  TableViewViewController.swift
//  parts-sample
//
//  Created by 伴地慶介 on 2021/08/20.
//

import UIKit

class TableViewViewController: UIViewController {
    
    private let cellId : String = "cellId"
    
    var list : [String] = ["Apple", "Lemon", "Banana"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }

}

extension TableViewViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "TableViewCellViewController", sender: self.list[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TableViewCellViewController" {
            let nextViewController = segue.destination as! TableViewCellViewController
            nextViewController.name = sender as! String
        }
    }
    
}
