//
//  ViewController.swift
//  top100Albums
//
//  Created by IMCS2 on 8/24/19.
//  Copyright © 2019 Tanishk Bajaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var tableView = UITableView()
    let cellId = "cell"
    var addItems = addItem()
    var st = itemModelArray()
    var ArtistNameArray: [String] = []
    var AlbumNameArray: [String] = []
    var ThumbnailImageUrl: [String] = []
    var Genre: [String] = []
    var ReleaseDate: [String] = []
    var CopyrightInfo: [String] = []
    var URLAlbumData: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title = "Top 100 Albums"
        addItems.gettingData(completionHandler: { (item: itemModelArray) -> () in
            DispatchQueue.main.async {
                self.ArtistNameArray = item.savedArtistNameArray
                self.AlbumNameArray = item.savedAlbumNameArray
                self.ThumbnailImageUrl = item.savedThumbnailImageUrl
                self.Genre = item.savedGenre
                self.ReleaseDate = item.savedReleaseDate
                self.CopyrightInfo = item.savedCopyrightInfo
                self.URLAlbumData = item.savedAlbumURLData
                self.tableView = UITableView(frame: self.view.bounds, style: UITableView.Style.plain)
                self.tableView.dataSource = self
                self.tableView.delegate = self
                self.tableView.register(AlbumTableViewCell.self, forCellReuseIdentifier: self.cellId)
                let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
                let displayWidth: CGFloat = self.view.frame.width
                let displayHeight: CGFloat = self.view.frame.height
                // padding between the view and the status bar
                self.tableView.contentInset.top = 20
                // scrolling overlaps with the status bar fixed
                self.tableView.frame = CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight)
                self.view.addSubview(self.tableView)
            }
        })
   
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArtistNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell( withIdentifier: cellId, for: indexPath) as? AlbumTableViewCell else {
          return  UITableViewCell()
        }
        cell.albumArtImageView.image = UIImage(data: NSData(contentsOf: NSURL(string: ThumbnailImageUrl[indexPath.row])! as URL)! as Data)
        cell.artistNameLabel.text = ArtistNameArray[indexPath.row]
        cell.albumTitleLabel.text = AlbumNameArray[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc2 = DetailItemDescViewController()
        vc2.addImage(imageName: UIImage(data: NSData(contentsOf: NSURL(string: ThumbnailImageUrl[indexPath.row])! as URL)! as Data)!)
        vc2.addArtistNameLabel(desc: ArtistNameArray[indexPath.row])
        vc2.addAlbumNameLabel(desc: AlbumNameArray[indexPath.row])
        vc2.addGenreNameLabel(desc: Genre[indexPath.row])
        vc2.addReleaseDateLabel(desc: ReleaseDate[indexPath.row])
        vc2.addCopyrightInfoLabel(desc: CopyrightInfo[indexPath.row])
        vc2.urlToDisp =  URLAlbumData[indexPath.row]
        vc2.ButtonLabel()
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let albumName = AlbumNameArray[indexPath.row]
        let artistName = ArtistNameArray[indexPath.row]
        let albumTextheight = albumName.height(withConstrainedWidth: tableView.frame.size.width - 88, font: UIFont.boldSystemFont(ofSize: 18))
        let artistTextHeight = artistName.height(withConstrainedWidth: tableView.frame.size.width - 88, font: UIFont.systemFont(ofSize: 16))
        let padding: CGFloat = 36
        let totalHeight = albumTextheight + artistTextHeight + padding
        return totalHeight
    }
    
}

extension String {
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return ceil(boundingBox.height)
    }
    
    func width(withConstraintedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return ceil(boundingBox.width)
    }
}
