//
//  RecipeHighlights.swift
//  Recipe List App
//
//  Created by Cássia Andrade on 4/4/22.
//

import SwiftUI

struct RecipeHighlights: View {
    
    var allHighlights = ""
    
    init(highlights:[String]) {
        
        //Loop through the highlights and build the strings
        for index in 0..<highlights.count{
            
            //If this is the last item, don't add a comma
            if index == highlights.count-1 {
                allHighlights += highlights[index]
            }
            else{
                allHighlights += highlights[index] + ", "
            }
            
        }
        
    }
    
    var body: some View {
        Text(allHighlights)
    }
}

struct RecipeHighlights_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlights(highlights: ["test1", "test2", "test3"])
    }
}