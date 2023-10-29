//
//  ContentView.swift
//  H4X0R NEWS
//
//  Created by SinaVN on 6/2/1402 AP.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationStack{
                List(networkManager.posts) { post in
                
                        NavigationLink(destination: DetailView(url: post.url)) {
                                Text(post.title)
                                Spacer()
     }
//                        .frame(width: 200, height: 50.0, alignment: .leading)
//
                    NavigationLink(destination: CommentsView(objectID:post.objectID)) {
                            HStack{
                                Image(systemName:"bubble.left.fill")
                                Text("\(post.num_comments)")
                            }
                        }
                }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
