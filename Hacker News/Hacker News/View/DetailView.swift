//
//  DetailView.swift
//  Hacker News
//
//  Created by Divyansh Srivastava on 05/07/23.
//

import SwiftUI

struct DetailView: View {
    
    let url : String?
    var body: some View {
        webView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"https://www.google.com")
    }
}
