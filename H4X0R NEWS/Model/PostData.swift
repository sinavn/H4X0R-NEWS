//
//  PostData.swift
//  H4X0R NEWS
//
//  Created by SinaVN on 6/2/1402 AP.
//

import Foundation
struct Results:Decodable{
    let hits :[Post]
}
struct Post:Decodable, Identifiable{
    var id:String{
        return objectID
    }
    let objectID : String
    let title : String
    let url : String?
    let points : Int
    let num_comments : Int
    let created_at :String
}
struct CommentResults:Decodable{
    let hits : [Comments]
}
struct Comments:Decodable,Identifiable {
    var id:String{
        return objectID
    }
    let created_at : String
    let author : String
    let comment_text : String
    let objectID : String
}
