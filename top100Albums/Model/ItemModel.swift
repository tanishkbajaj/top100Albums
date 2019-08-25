//
//  ItemModel.swift
//  top100Albums
//
//  Created by IMCS2 on 8/21/19.
//  Copyright © 2019 Tanishk. All rights reserved.
//

import Foundation

struct itemModel {
    
    var albumName: String
    var artistName: String
    var thumbnailImageUrl: String
    var genre: String
    var releaseDate: String
    var copyrightInfo: String
    
    init() {
        
        albumName = ""
        artistName = ""
         thumbnailImageUrl = ""
         genre = ""
         releaseDate = ""
         copyrightInfo = ""
        
    }
    
    init(albumName: String, artistName: String, thumbnailImageUrl: String, genre: String, releaseDate: String, copyrightInfo: String) {
        
        self.albumName = albumName
        self.artistName = artistName
        self.thumbnailImageUrl = thumbnailImageUrl
        self.genre = genre
        self.releaseDate = releaseDate
        self.copyrightInfo = copyrightInfo
        
    }

    
    
    
    
}

class itemModelArray: NSObject {
    
    var savedArtistNameArray: [String]
    var savedAlbumNameArray: [String]
    var savedThumbnailImageUrl: [String]
    var savedGenre: [String]
    var savedReleaseDate: [String]
    var savedCopyrightInfo: [String]
    var savedAlbumURLData: [String]
    
    override init() {
        
       
        savedArtistNameArray = []
        savedAlbumNameArray = []
        savedThumbnailImageUrl = []
        savedGenre = []
        savedReleaseDate = []
        savedCopyrightInfo = []
        savedAlbumURLData = []
        
    }
    
    init(savedArtistNameArray: [String], savedAlbumNameArray: [String], savedThumbnailImageUrl: [String], savedGenre: [String], savedReleaseDate: [String], savedCopyrightInfo: [String], savedAlbumURLData: [String]) {
        
        self.savedArtistNameArray = savedArtistNameArray
        self.savedAlbumNameArray = savedAlbumNameArray
        self.savedThumbnailImageUrl = savedThumbnailImageUrl
        self.savedGenre = savedGenre
        self.savedReleaseDate = savedReleaseDate
        self.savedCopyrightInfo = savedCopyrightInfo
        self.savedAlbumURLData = savedAlbumURLData
        
    }
    
}
