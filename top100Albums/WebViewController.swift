//
//  WebViewController.swift
//  top100Albums
//
//  Created by IMCS2 on 8/23/19.
//  Copyright © 2019 Tanishk. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController{
    //var webView: WKWebView!
    var UrlToDisplay = ""
    
//    override func loadView() {
//        let webConfiguration = WKWebViewConfiguration()
//        webView = WKWebView(frame: .zero, configuration: webConfiguration)
//        webView.uiDelegate = self as? WKUIDelegate
//        view = webView
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: UrlToDisplay),
            UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:])
        }
//        let webV    = UIWebView()
//        webV.frame  = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//        print(UrlToDisplay)
//        webV.loadRequest(NSURLRequest(url: NSURL(string: "https://www.google.com")! as URL) as URLRequest)
//        webV.delegate = self as? UIWebViewDelegate
//        self.view.addSubview(webV)
        
       
      //  openAppStore()
        
    }
    
//    func openAppStore() {
//        if let url = URL(string: UrlToDisplay),
//            UIApplication.shared.canOpenURL(url){
//            UIApplication.shared.open(url, options: [:]) { (opened) in
//                if(opened){
//                    print("App Store Opened")
//                }
//            }
//        } else {
//            print("Can't Open URL on Simulator")
//        }
//    }
    
}
