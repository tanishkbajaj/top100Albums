//
//  DetailItemDescViewController.swift
//  top100Albums
//
//  Created by IMCS2 on 8/24/19.
//  Copyright © 2019 Tanishk Bajaj. All rights reserved.
//

import UIKit

class DetailItemDescViewController: UIViewController {
    
    var views: UIView!
    var urlToDisp = ""
    var imageView = UIImageView()
    var ArtistNamelabel = UILabel()
    var AlbumNameLabel = UILabel()
    var GenreNameLabel = UILabel()
    var ReleaseDateLabel = UILabel()
    var CopyrightInfoLabel = UILabel(frame: CGRect(x: 10, y: 550, width: 350, height: 21))
    var button = UIButton(type: .custom)
    let customBlueColor = UIColor(red: 56/255, green: 125/255, blue: 204/255, alpha: 1)
    let largeArtworkSize:CGFloat = 200
    
    
    
    func addImage(imageName: UIImage) {
        imageView.image = imageName
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.addShadow()
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addArtistNameLabel(desc: String) {
        ArtistNamelabel.text = desc
        ArtistNamelabel.textColor = customBlueColor
        ArtistNamelabel.numberOfLines = 0
        ArtistNamelabel.textAlignment = .center
        ArtistNamelabel.font = UIFont.systemFont(ofSize: 16)
        ArtistNamelabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addAlbumNameLabel(desc: String) {
        AlbumNameLabel.text = desc
        AlbumNameLabel.textColor = .black
        AlbumNameLabel.numberOfLines = 0
        AlbumNameLabel.textAlignment = .center
        AlbumNameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        AlbumNameLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    lazy var genereTitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Genre"
        lbl.textColor = .black
        lbl.numberOfLines = 1
        lbl.textAlignment = .left
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func addGenreNameLabel(desc: String) {
        GenreNameLabel.text = desc
        GenreNameLabel.textColor = .lightGray
        GenreNameLabel.numberOfLines = 0
        GenreNameLabel.textAlignment = .left
        GenreNameLabel.font = UIFont.systemFont(ofSize: 14)
        GenreNameLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addReleaseDateLabel(desc: String) {
        ReleaseDateLabel.text = desc
        ReleaseDateLabel.textColor = .lightGray
        ReleaseDateLabel.numberOfLines = 0
        ReleaseDateLabel.textAlignment = .center
        ReleaseDateLabel.font = UIFont.systemFont(ofSize: 12)
        ReleaseDateLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    lazy var copyRightTitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Copyright"
        lbl.textColor = .black
        lbl.numberOfLines = 1
        lbl.textAlignment = .left
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func addCopyrightInfoLabel(desc: String) {
        CopyrightInfoLabel.text = desc
        CopyrightInfoLabel.textColor = .lightGray
        CopyrightInfoLabel.numberOfLines = 0
        CopyrightInfoLabel.textAlignment = .left
        CopyrightInfoLabel.font = UIFont.systemFont(ofSize: 14)
        CopyrightInfoLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func ButtonLabel() {
        button.backgroundColor = customBlueColor
        button.setTitle("View Album", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 9
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
}


private extension DetailItemDescViewController {
    
    func setupUI() {
        
        view.backgroundColor = .white
        view.addSubview(imageView)
        view.addSubview(AlbumNameLabel)
        view.addSubview(ArtistNamelabel)
        view.addSubview(genereTitleLabel)
        view.addSubview(GenreNameLabel)
        view.addSubview(copyRightTitleLabel)
        view.addSubview(CopyrightInfoLabel)
        view.addSubview(ReleaseDateLabel)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            imageView.heightAnchor.constraint(equalToConstant: largeArtworkSize),
            imageView.widthAnchor.constraint(equalToConstant: largeArtworkSize),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            AlbumNameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            AlbumNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            AlbumNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            ArtistNamelabel.topAnchor.constraint(equalTo: AlbumNameLabel.bottomAnchor, constant: 5),
            ArtistNamelabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            ArtistNamelabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            ReleaseDateLabel.topAnchor.constraint(equalTo: ArtistNamelabel.bottomAnchor, constant: 1),
            ReleaseDateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            genereTitleLabel.topAnchor.constraint(equalTo: ReleaseDateLabel.bottomAnchor, constant: 5),
            genereTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            genereTitleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            
            GenreNameLabel.topAnchor.constraint(equalTo: genereTitleLabel.bottomAnchor, constant: 2),
            GenreNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            GenreNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            copyRightTitleLabel.topAnchor.constraint(equalTo: GenreNameLabel.bottomAnchor, constant: 8),
            copyRightTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            copyRightTitleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            
            CopyrightInfoLabel.topAnchor.constraint(equalTo: copyRightTitleLabel.bottomAnchor, constant: 2),
            CopyrightInfoLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            CopyrightInfoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            button.heightAnchor.constraint(equalToConstant: 44)
            
            ])
        
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    
    @objc func buttonAction(sender: UIButton!) {
        
        if let url = URL(string: "\(urlToDisp)"),
            UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
}

extension UIView {
    
    func addShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 5
        clipsToBounds = false
    }
}
