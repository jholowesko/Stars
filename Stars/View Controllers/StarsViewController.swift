//
//  StarsViewController.swift
//  Stars
//
//  Created by John Holowesko on 12/8/19.
//  Copyright © 2019 John Holowesko. All rights reserved.
//

import UIKit

class StarsViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var distanceTextField: UITextField!
    @IBOutlet var tableView: UITableView!
    
    // MARK: Properties
    let starController = StarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - IBActions
    @IBAction func printStars(_ sender: UIButton) {
        
    }
    @IBAction func createStar(_ sender: UIButton) {
        guard let name = nameTextField.text,
            let distanceString = distanceTextField.text,
            !name.isEmpty,
            !distanceString.isEmpty,
            let distance = Double(distanceString) else { return }
        
        starController.createStar(named: name, withDistance: distance)
        nameTextField.text = ""
        distanceTextField.text = ""
        // Become first responder means it'll put the curser back in the "nameTextField"
        nameTextField.becomeFirstResponder()
        tableView.reloadData()
    }
}

