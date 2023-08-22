//
//  DetailsViewController.swift
//  tableViewExample
//
//  Created by Fatih Gümüş on 22.08.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var secilenKahramanIsmi = ""
    var secilenKahramanGorseli = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = secilenKahramanIsmi
        imageView.image = UIImage(named: secilenKahramanGorseli)
    }
    



}
