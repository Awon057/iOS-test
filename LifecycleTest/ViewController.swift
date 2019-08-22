//
//  ViewController.swift
//  LifecycleTest
//
//  Created by Dnet ITHelpdesk on 20/8/19.
//  Copyright © 2019 dnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print("viewDidLoad")
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(viewController, animated: true)
//        if activityIndicator.isAnimating {
//            stopIndicator()
//        } else {
//            showIndicator()
//        }
    }
    
    private func showIndicator(){
        activityIndicator.center = self.view.center
        activityIndicator.sizeThatFits(CGSize(width: self.view.frame.width/2, height: 50))
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.whiteLarge
        activityIndicator.color = .black
        activityIndicator.backgroundColor = .gray
        view.addSubview(activityIndicator)
        
        activityIndicator.startAnimating()
    }
    
    private func stopIndicator(){
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
        }
    }
}

