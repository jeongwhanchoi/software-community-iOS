//
//  ViewController.swift
//  WebViewExample
//
//  Created by jeongwhanchoi on 30/11/19.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        webView.navigationDelegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear( animated )
        
        let urlString:String = "http://sweng.namsu.site"
        let url:URL = URL(string: urlString)!
        let urlRequest:URLRequest = URLRequest(url: url)
        webView.load(urlRequest)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        let urlString:String = urlTextField.text!
//        let url:URL = URL(string: urlString)!
//        let urlRequest:URLRequest = URLRequest(url: url)
//        webView.load(urlRequest)
//
//        textField.resignFirstResponder()
//
//        return true
//    }
    
    

}

