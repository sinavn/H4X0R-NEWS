//
//  WebView.swift
//  H4X0R NEWS
//
//  Created by SinaVN on 6/4/1402 AP.
//

import Foundation
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable{
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeData = urlString{
            if let url = URL(string: safeData){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

