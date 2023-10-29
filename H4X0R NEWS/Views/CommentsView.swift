//
//  CommentsView.swift
//  H4X0R NEWS
//
//  Created by SinaVN on 6/5/1402 AP.
//

import SwiftUI

struct CommentsView: View {
    @ObservedObject var networkManager = NetworkManager()
    let objectID : String?
    var body: some View {
        
        List(networkManager.commentPost){post in
            Text(post.comment_text)
            
        }
        .onAppear(){
            networkManager.fetchCommentData(objectID: objectID!)
        }
    }
    
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView(objectID: "22")
    }
}
