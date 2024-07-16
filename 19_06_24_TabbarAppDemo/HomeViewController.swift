//
//  ViewController.swift
//  19_06_24_TabbarAppDemo
//
//  Created by Vishal Jagtap on 15/07/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var inforTextView: UITextView!
    
    private var resueIdentifier = "StudentEnquiryDetailsViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    private func initViews(){
        self.messageLabel.text = "Welcome To Bitcode!"
    }
    
    @IBAction func btnAddStudentInfo(_ sender: Any) {
        
        let studentEnquiryDetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: resueIdentifier) as! StudentEnquiryDetailsViewController

        self.navigationController?.pushViewController(studentEnquiryDetailsViewController, animated: true)
    }
}
