//
//  ItemModel.swift
//  top100Albums
//
//  Created by IMCS2 on 8/24/19.
//  Copyright © 2019 Tanishk Bajaj. All rights reserved.
//

import Foundation



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
