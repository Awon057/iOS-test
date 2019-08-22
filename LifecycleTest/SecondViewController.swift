//
//  SecondViewController.swift
//  LifecycleTest
//
//  Created by Dnet ITHelpdesk on 20/8/19.
//  Copyright © 2019 dnet. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var issueDate: UIButton!
    @IBOutlet weak var closingDate: UIButton!
    @IBOutlet weak var tenderTitle: UIButton!
    @IBOutlet weak var district: UIButton!
    
    @IBOutlet weak var procurementTypeButton: UIButton!
    @IBOutlet weak var ministryButton: UIButton!
    @IBOutlet weak var agencyButton: UIButton!
    @IBOutlet weak var districtButton: UIButton!
    @IBOutlet weak var procurementMethodButton: UIButton!
    
    @IBOutlet weak var viewUI: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        print("viewDidLoad2")
        addDisclosure(button: procurementTypeButton)
        addDisclosure(button: ministryButton)
        addDisclosure(button: agencyButton)
        addDisclosure(button: districtButton)
        addDisclosure(button: procurementMethodButton)
//        viewUI.
    }
    
    private func addDisclosure(button: UIButton){
        let disclosure = UITableViewCell()
        disclosure.frame = button.bounds
        disclosure.accessoryType = .disclosureIndicator
        disclosure.isUserInteractionEnabled = false
        
        button.addSubview(disclosure)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
