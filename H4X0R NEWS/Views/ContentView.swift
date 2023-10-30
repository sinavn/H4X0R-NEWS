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
        
                .navigationTitle("hacker")
                .onAppear {
                    networkManager.fetchData()
                }
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.643, saturation: 0.087, brightness: 0.998)/*@END_MENU_TOKEN@*/)
      
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
