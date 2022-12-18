//
//  YoutubeSearchResponse.swift
//  RepliFlix
//
//  Created by Krystal Zhang on 9/19/22.
//

import Foundation

struct YoutubeSearchResponse: Codable { 
    let items: [VideoElement]
    
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable{
    let kind: String
    let videoId: String
}
