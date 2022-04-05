//
//  ContentView.swift
//  Recipe List App
//
//  Created by Cássia Andrade on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        NavigationView {
            
            VStack (alignment:.leading){
                
                Text("All Recipes")
                    .bold()
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                ScrollView{
                    LazyVStack (alignment:.leading){
                        ForEach(model.recipes) { r in
                            
                            NavigationLink(
                                destination: RecipeDetailView(recipe:r),
                                label: {
                                    HStack(spacing: 20.0) {
                                        Image(r.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50, alignment: .center)
                                            .clipped()
                                            .cornerRadius(5)
                                        
                                        VStack(alignment: .leading){
                                            Text(r.name)
                                                .foregroundColor(.black)
                                                .bold()
                                            RecipeHighlights(highlights:r.highlights)
                                                .foregroundColor(.black)
                                        }
                                        
                                    }
                                    
                                })
                            
                            
                            
                        }
                    }
                }
                
                .navigationBarHidden(true)
                .padding(.leading)
                
            }
            
        }
        
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(RecipeModel())
        }
    }
