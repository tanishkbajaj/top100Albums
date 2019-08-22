//
//  AlbumTableViewCell.swift
//  top100Albums
//
//  Created by IMCS2 on 8/21/19.
//  Copyright © 2019 Tanishk. All rights reserved.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {
    
    var myview: ViewController?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let artistNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Sample Item"
       
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    let albumNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Sample Item"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    let albumImage: UIImageView? = {
        let img = UIImageView()
      
        return img
        
        
    }()
    
   
    
    func setupViews() {
        addSubview(artistNameLabel)
        addSubview(albumNameLabel)
        addSubview(albumImage!)
        
        
       
        
        //addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-16-[v0]-8-[v1(80)]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": nameLabel, "v1": actionButton]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": artistNameLabel]))
      //  addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": actionButton]))
        
    }

}
