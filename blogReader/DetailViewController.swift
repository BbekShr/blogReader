//
//  DetailViewController.swift
//  blogReader
//
//  Created by Bibek Shrestha on 2/21/19.
//  Copyright © 2019 Bibek Shrestha. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    func configureView() {
        // Update the user interface for the detail item.
        
       
        
        if let detail = self.detailItem {
             self.title = detail.value(forKey: "title") as! String
            if let blogWebView = self.webView {
                
                blogWebView.loadHTMLString(detail.value(forKey: "content") as! String, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

