//
//  InfoViewController.swift
//  19_06_24_TabbarAppDemo
//
//  Created by Vishal Jagtap on 15/07/24.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var androidContainerView: UIView!
    @IBOutlet weak var iOSContainerView: UIView!
    @IBOutlet weak var ccppContainerView: UIView!
    
    private let reuseIdentifierForAndroidViewController = "AndroidInfoViewController"
    private let reuseIdentifierForiOSViewController = "iOSInfoViewController"
    private let reuseIdentifierForCCppInfoViewController = "CCppInfoViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        initViews()
    }
    
    private func initViews(){
        self.infoLabel.text = "Courses Info"
        self.androidContainerView.isHidden = false
        self.ccppContainerView.isHidden = true
        self.iOSContainerView.isHidden = true
    }
    
        //way 2 --> only one IBAction for three different buttons
    
    @IBAction func btnNavigateBetweenViewControllers(_ sender: UIButton) {
        
        //way -- using if else conditional statements
        
        if (sender.tag == 1){
            self.androidContainerView.isHidden = false
            self.iOSContainerView.isHidden = true
            self.ccppContainerView.isHidden = true
        } else if (sender.tag == 2){
            self.iOSContainerView.isHidden = false
            self.androidContainerView.isHidden = true
            self.ccppContainerView.isHidden = true
        } else {
            self.ccppContainerView.isHidden = false
            self.androidContainerView.isHidden = true
            self.iOSContainerView.isHidden = true
        }
        
        
        //way -- using switch case
//        switch sender.tag{
//            case 1 :
//                self.androidContainerView.isHidden = false
//                self.iOSContainerView.isHidden = true
//                self.ccppContainerView.isHidden = true
//            
//            case 2 :
//                self.iOSContainerView.isHidden = false
//                self.androidContainerView.isHidden = true
//                self.ccppContainerView.isHidden = true
//            
//            case 3 :
//                self.ccppContainerView.isHidden = false
//                self.androidContainerView.isHidden = true
//                self.iOSContainerView.isHidden = true
//            
//            default :
//                self.androidContainerView.isHidden = false
//                self.ccppContainerView.isHidden = true
//                self.iOSContainerView.isHidden = true
//        }
    }
    
        //way 1 --> three different actions for three buttons
    
//    @IBAction func btnNavigateToAndroidInfoViewController(_ sender: UIButton) {
//    
//        print(sender.tag)
//        
//        self.androidContainerView.isHidden = false
//        self.iOSContainerView.isHidden = true
//        self.ccppContainerView.isHidden = true
//    }
//    
//    @IBAction func btnNavigateToiOSInfoViewController(_ sender: UIButton) {
//        
//        print(sender.tag)
//        
//        self.iOSContainerView.isHidden = false
//        self.androidContainerView.isHidden = true
//        self.ccppContainerView.isHidden = true
//    }
//    
//    @IBAction func btnNavigateToCCppInfoViewContorller(_ sender: UIButton) {
//        
//        print(sender.tag)
//        
//        self.ccppContainerView.isHidden = false
//        self.androidContainerView.isHidden = true
//        self.iOSContainerView.isHidden = true
//    }
}
