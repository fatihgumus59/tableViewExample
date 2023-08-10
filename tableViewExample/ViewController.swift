//
//  ViewController.swift
//  tableViewExample
//
//  Created by Fatih Gümüş on 9.08.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    struct ImageType{
        let image : String
        let title : String
    }

    @IBOutlet weak var tableView: UITableView!
    var superKahraman = [ImageType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superKahraman = [
            ImageType(image: "batman", title: "Batman"),
            ImageType(image: "superman", title: "Süperman"),
            ImageType(image: "iron-man", title: "İron Man"),
            ImageType(image: "captain-america", title: "Captain Amerika"),
            ImageType(image: "spiderman", title: "Spiderman"),
        
        ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahraman.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahraman[indexPath.row].title;
        
        return cell
    }
    
    func tableView(_ tableView :UITableView, commit editingStyle : UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath){
        
        if editingStyle == .delete {
            superKahraman.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    


}

