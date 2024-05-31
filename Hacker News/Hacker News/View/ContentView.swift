//
//  ContentView.swift
//  Hacker News
//
//  Created by Divyansh Srivastava on 05/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts, rowContent: { posts in
                    NavigationLink(destination: DetailView(url: posts.url)) {
                        HStack {
                            Text(String(posts.points))
                            Text(posts.title)
                    }
                }
                
            })
            .navigationBarTitle("Hacker News")
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

