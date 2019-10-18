//
//  Menu05ViewController.swift
//  MyCafe
//
//  Created by maro on 29/09/2019.
//  Copyright © 2019 마현아. All rights reserved.
//

import UIKit
import WebKit

class Menu05ViewController: UIViewController {
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadWebPage("http://paikdabang.com/store")
    }
    
    @IBAction func onBtnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }

    func loadWebPage(_ url: String) {
        let myUrl =  URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    
    
}
