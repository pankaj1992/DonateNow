//
//  RequestorViewController.swift
//  DonateNow
//
//  Created by Saranya Krishnan on 2/5/17.
//  Copyright © 2017 Saranya Krishnan. All rights reserved.
//

import Foundation
import UIKit

class RequestorViewController: UIViewController{
    
    //MARK: Outlets
    @IBOutlet weak var requestorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var reserveDonationContainerView: UIView!
    @IBOutlet weak var acceptedDonationsContainerView: UIView!
    
    //MARK: Outlets Action
    @IBAction func segmentedControlValueChangedAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.acceptedDonationsContainerView.alpha = 1
                self.reserveDonationContainerView.alpha = 0
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.acceptedDonationsContainerView.alpha = 0
                self.reserveDonationContainerView.alpha = 1
            })
        }

        
    }
    
    //MARK: View Controller Life cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //show navigation controller for Donor page
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.setHidesBackButton(true, animated:true);

        let logoutButton : UIBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItemStyle.plain, target: self, action: Selector(("Logout")))
        self.navigationItem.rightBarButtonItem = logoutButton;
        
        // Status bar black font
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.title = "Welcome Charity!!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
