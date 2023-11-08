//
//  ContentView.swift
//  H4X0R NEWS
//
//  Created by SinaVN on 6/2/1402 AP.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var networkManager :NetworkManager
    
    var body: some View {
                        ScrollView{
                            ForEach(networkManager.posts) { post in
                                
                                ListRowView(url: post.url, title: post.title, objectId: post.id, commnetsCount: post.num_comments ,createdAt: post.created_at)
                            }
                        }
                        
        
                .navigationTitle(
                    Text("H4X0R NEWS")
                )
                .onAppear {
                    networkManager.fetchData()
                }
                .background(Color.accentColor)
      
    }
        
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView{
                ContentView()
            }
            .environmentObject(NetworkManager())
            
            
        }
    }
}
