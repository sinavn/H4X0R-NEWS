//
//  DetailView.swift
//  H4X0R NEWS
//
//  Created by SinaVN on 6/3/1402 AP.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url : String?
    var body: some View {

            WebView(urlString: url)
   
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com" )
    }
}
