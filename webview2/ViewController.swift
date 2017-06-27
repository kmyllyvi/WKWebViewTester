//
//  ViewController.swift
//  webview2
//
//  Created by Campbell,George on 1/8/16.
//  Copyright © 2016 Campbell,George. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var webView: WebView
    
    @IBOutlet weak var searchText: UITextField!

    required init(coder aDecoder: NSCoder) {
        self.webView = WebView()
        super.init(coder: aDecoder)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        webView.setPosition(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    
    @IBAction func siteHomeBtn(_ sender: UIButton) {
        webView.setUrl("http://www.google.com")
    }

    @IBAction func searchBtn(_ sender: UIButton) {
        print ("Navigating to: \(String(describing: searchText.text))")
        webView.setUrl(searchText.text)
    }
    
    @IBAction func appHomeBtn(_ sender: UIButton) {
        webView.setAppHome()
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        webView.back()
    }
    
    @IBAction func forwardBtn(_ sender: UIButton) {
        webView.forward()
    }
}

