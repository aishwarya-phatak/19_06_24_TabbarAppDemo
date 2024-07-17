//
//  EnquiryViewController.swift
//  19_06_24_TabbarAppDemo
//
//  Created by Vishal Jagtap on 15/07/24.
//

import UIKit
import WebKit

class EnquiryViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var url : URL?
    var urlRequest : URLRequest?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        url = URL(string: "https://bitcode.in/index.html")
        urlRequest = URLRequest(url: url!)
        webView.load(urlRequest!)
    }
}
