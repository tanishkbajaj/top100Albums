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
    
    var UrlToDisplay = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "https://music.apple.com/us/album/lover/1468058165?app=musics"),
            UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:])
        }

        
    }
    

    
}
