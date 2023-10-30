//
//  ListRowView.swift
//  H4X0R NEWS
//
//  Created by SinaVN on 8/8/1402 AP.
//

import SwiftUI

struct ListRowView: View {
    let url : String?
    let title : String
    let objectId : String
    let commnetsCount : Int
    let createdAt : String
    var body: some View {
        
        VStack {
            
            Text(createdAt)
                .font(.footnote)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,7)
            
            HStack{
                
                NavigationLink(destination: DetailView(url: url)) {
                    Text(title)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)

                }
                .frame(maxWidth: .infinity ,alignment: .leading)
                .frame(height: 50)
                .background(Color(.white))
                .cornerRadius(10)
//                .shadow(radius: 4)
                .padding(.bottom,5)
                Spacer()
                
                
                
                NavigationLink(destination: CommentsView(objectID:objectId)) {
                        HStack{
                            Image(systemName:"bubble.left.fill")
                            Text("\(commnetsCount)")
                        }
                    }
                .frame(width: 70,height:50 )
                .background(Color(.white))
                .cornerRadius(10)
                .padding(.bottom,5)
    //            .shadow(radius: 5)
                
                
            }
            .padding(.leading,5)
            .padding(.trailing,5)
            
    
            
        }
        
        .cornerRadius(20)
    
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListRowView(url: "https://www.google.com", title: "i accidentaly save my company half a millioin dollar " , objectId: "20" , commnetsCount: 100 , createdAt: "2023-10-30T14:15:07Z")
        }
    }
}
