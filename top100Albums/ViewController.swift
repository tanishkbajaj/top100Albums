//
//  ViewController.swift
//  top100Albums
//
//  Created by IMCS2 on 8/21/19.
//  Copyright © 2019 Tanishk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var tableView = UITableView()
    let cellId = "cell"
    var items: [itemModel] = [itemModel]()
    var a = addItem()
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
        a.gettingData(completionHandler: { (item: itemModelArray) -> () in
            DispatchQueue.main.async {
                print("we are here")
                print(item.savedAlbumNameArray)
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
        let cell = tableView.dequeueReusableCell( withIdentifier: cellId, for: indexPath) as! AlbumTableViewCell
       // ArtWorkImageView.image = UIImage(data: NSData(contentsOf: NSURL(string: album.artWorkUrl)! as URL)! as Data)
        cell.textLabel?.textAlignment = .right
       // cell.textLabel?.text = ArtistNameArray[indexPath.row]
        cell.artistNameLabel.text = ArtistNameArray[indexPath.row]
        cell.albumNameLabel.text = AlbumNameArray[indexPath.row]
        cell.imageView?.image = UIImage(data: NSData(contentsOf: NSURL(string: ThumbnailImageUrl[indexPath.row])! as URL)! as Data)
        //not working
        //cell.albumImage?.image = UIImage(data: NSData(contentsOf: NSURL(string: ThumbnailImageUrl[indexPath.row])! as URL)! as Data)
       // cell.myview = self
        
       
        
        return cell
        
    }
    //let blogSegueIdentifier = "ShowBlogSegue"
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
       
        print("we are here")
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
        var height:CGFloat = CGFloat()
        
        height = 80
        return height
    }
    
    
   
    
    
    // MARK: - Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if  segue.identifier == blogSegueIdentifier,
//            let destination = segue.destination as? DetailItemDescViewController,
//            let blogIndex = tableView.indexPathForSelectedRow?.row
//        {
//            // let vc2 = DetailItemDescViewController()
//            self.navigationController?.present(destination, animated: true, completion: nil)
//          //  destination.blogName = swiftBlogs[blogIndex]
//        }
//    }
//
    


}

