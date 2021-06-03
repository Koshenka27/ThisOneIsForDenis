//
//  ContentView.swift
//  ThisOneIsForDenis
//
//  Created by Logan Koshenka on 6/2/21.
//

import SwiftUI

struct ContentView: View {
    let urlString = "https://images.unsplash.com/photo-1487873028783-beb11d92f7b7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
    
    var body: some View {
        Image(uiImage: getImageFromURL(urlString: urlString))
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

func getImageFromURL(urlString: String) -> UIImage {
    do {
        guard let url = URL(string: urlString) else { return UIImage() }
        let data = try Data(contentsOf: url)
        return UIImage(data: data) ?? UIImage()
        
    } catch {
        
    }
    
    return UIImage()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
