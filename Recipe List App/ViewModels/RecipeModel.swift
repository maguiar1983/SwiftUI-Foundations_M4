//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Cássia Andrade on 2/3/22.
//

import Foundation

class RecipeModel:ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        //Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        //This is a short way of doing the code below
        //Since the func in Data service is static, DataService can be called directly - we don;t need to create an instance of it (DataService())
        // let service = DataService()
        //self.recipes = service.getLocalData()
        
    }
    
}
