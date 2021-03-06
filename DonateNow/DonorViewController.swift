//
//  DonorViewController.swift
//  DonateNow
//
//  Created by Saranya Krishnan on 1/30/17.
//  Copyright © 2017 Saranya Krishnan. All rights reserved.
//

import Foundation
import UIKit


class DonorViewController: UIViewController{
    
    //MARK: Outlets
    @IBOutlet weak var donorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var newDonationContainerView: UIView!
    @IBOutlet weak var myDonationsContainerView: UIView!
    
    //MARK: Outlets Action
    //Based on the segmented control selection show pages
    @IBAction func segmentedControlAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.myDonationsContainerView.alpha = 1
                self.newDonationContainerView.alpha = 0
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.myDonationsContainerView.alpha = 0
                self.newDonationContainerView.alpha = 1
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
        self.title = "Welcome Thai Ginger!!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
