//
//  DetailItemDescViewController.swift
//  top100Albums
//
//  Created by IMCS2 on 8/22/19.
//  Copyright © 2019 Tanishk. All rights reserved.
//

import UIKit

class DetailItemDescViewController: UIViewController {
    
    var views: UIView!
    //let imageName = "yourImage.png"
   

    override func viewDidLoad() {
        
        super.viewDidLoad()
         view.backgroundColor = .white
      // views.translatesAutoresizingMaskIntoConstraints = false
         //views = UIView()
       // self.view.addSubview(views)
       // view.backgroundColor = .blue
        // Do any additional setup after loading the view.
        
    }
    
    func addImage(imageName: UIImage) {
        
        
        let imageView = UIImageView(image: imageName)
        imageView.frame = CGRect(x: 35, y: 100, width: 350, height: 200)
        view.addSubview(imageView)
        
    }
    
    func addArtistNameLabel(desc: String) {
        
        let label = UILabel(frame: CGRect(x: 10, y: 350, width: 350, height: 21))
        // label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = desc
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 2
        self.view.addSubview(label)
        
    }
    
    func addAlbumNameLabel(desc: String) {
        
        let label = UILabel(frame: CGRect(x: 10, y: 400, width: 350, height: 21))
       // label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = desc
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 2
        self.view.addSubview(label)
        
    }
    
    func addGenreNameLabel(desc: String) {
        let label = UILabel(frame: CGRect(x: 10, y: 450, width: 350, height: 21))
        label.textAlignment = .center
        label.text = desc
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 2
        self.view.addSubview(label)
    }
    
    func addReleaseDateLabel(desc: String) {
        
        let label = UILabel(frame: CGRect(x: 10, y: 500, width: 350, height: 21))
        label.textAlignment = .center
        label.text = desc
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 2
        self.view.addSubview(label)
        
    }
    
    func addCopyrightInfoLabel(desc: String) {
        
        let label = UILabel(frame: CGRect(x: 10, y: 550, width: 350, height: 21))
        label.textAlignment = .center
        label.text = desc
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 2
        self.view.addSubview(label)
        
    }
    
    func ButtonLabel() {
        
        
        let button = UIButton()
        button.frame = CGRect(x: 120, y: 600, width: 130, height: 80)
        button.backgroundColor = UIColor.red
        button.setTitle("Show on iTunes", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
        

        
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
    }
    
    
    
    
   


}
