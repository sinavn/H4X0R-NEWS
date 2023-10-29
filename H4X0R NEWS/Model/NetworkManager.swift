//
//  NetworkManager.swift
//  H4X0R NEWS
//
//  Created by SinaVN on 6/2/1402 AP.
//

import Foundation
class NetworkManager:ObservableObject{
    @Published var posts = [Post]()
    @Published var commentPost = [Comments]()
    func fetchData(){
        if let url=URL(string:"http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session=URLSession(configuration: .default)
            let task=session.dataTask(with: url) { data, response, error in
                if error != nil{
                    print("error\(error!)")
                }else{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
//                            print(String(data: safeData, encoding: .utf8) )
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    func  fetchCommentData(objectID:String){
        if let url=URL(string:"https://hn.algolia.com/api/v1/search?tags=comment,story_\(objectID)"){
            let session=URLSession(configuration: .default)
            let task=session.dataTask(with: url) { data, response, error in
                if error != nil{
                    print("error\(error!)")
                }else{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(CommentResults.self, from: safeData)
                            DispatchQueue.main.async {
                                self.commentPost = results.hits
                            }
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }

}


