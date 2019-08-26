//
//  AlbumTableViewCell.swift
//  top100Albums
//
//  Created by IMCS2 on 8/24/19.
//  Copyright © 2019 Tanishk Bajaj. All rights reserved.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {
    
    var myview: ViewController!
    private let imageSize:CGFloat = 50
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var albumArtImageView: UIImageView = {
        let imgView = UIImageView()
        imgView.image = nil
        imgView.clipsToBounds = true
        imgView.contentMode = .scaleAspectFit
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    lazy var albumTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .left
        label.text = nil
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var artistNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.textColor = .lightGray
        label.textAlignment = .left
        label.text = nil
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupUI() {
        self.addSubview(containerView)
        containerView.addSubview(albumArtImageView)
        containerView.addSubview(albumTitleLabel)
        containerView.addSubview(artistNameLabel)
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            containerView.heightAnchor.constraint(greaterThanOrEqualToConstant: 70),
            
            
            albumArtImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0),
            albumArtImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 15),
            albumArtImageView.widthAnchor.constraint(equalToConstant: imageSize),
            albumArtImageView.heightAnchor.constraint(equalToConstant: imageSize),
            
            albumTitleLabel.leadingAnchor.constraint(equalTo: albumArtImageView.trailingAnchor, constant: 15),
            albumTitleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            albumTitleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
            
            artistNameLabel.leadingAnchor.constraint(equalTo: albumArtImageView.trailingAnchor, constant: 15),
            artistNameLabel.topAnchor.constraint(equalTo: albumTitleLabel.bottomAnchor, constant: 5),
            artistNameLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
            
            ])
    }
    
}
