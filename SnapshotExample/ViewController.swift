//
//  ViewController.swift
//  SnapshotExample
//
//  Created by enadolinskaia on 23.04.2023.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var helloLabel: UILabel!
    var isDarkMode = false {
        didSet {
            view.backgroundColor = isDarkMode ? .black : .white
            helloLabel.textColor = isDarkMode ? .white : .black
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isDarkMode = false
    }


}

