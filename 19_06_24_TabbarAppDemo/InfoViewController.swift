//
//  InfoViewController.swift
//  19_06_24_TabbarAppDemo
//
//  Created by Vishal Jagtap on 15/07/24.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    private let reuseIdentifierForAndroidViewController = "AndroidInfoViewController"
    private let reuseIdentifierForiOSViewController = "iOSInfoViewController"
    private let reuseIdentifierForCCppInfoViewController = "CCppInfoViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }
    
    private func initViews(){
        self.infoLabel.text = "Courses Info"
    }
    
    @IBAction func btnNavigateToAndroidInfoViewController(_ sender: UIButton) {
    
        print(sender.tag)
        let androidInforViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifierForAndroidViewController) as! AndroidInfoViewController
    }
    
    @IBAction func btnNavigateToiOSInfoViewController(_ sender: UIButton) {
        
        print(sender.tag)
        let iOSInfoViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifierForiOSViewController)
         as! iOSInfoViewController
    }
    
    @IBAction func btnNavigateToCCppInfoViewContorller(_ sender: UIButton) {
        
        print(sender.tag)
        let ccppInfoViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifierForCCppInfoViewController) as! CCppInfoViewController
    }
}
