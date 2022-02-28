//
//  Recipe.swift
//  Recipe List App
//
//  Created by Cássia Andrade on 2/3/22.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[Ingredients]
    var directions:[String]
    var highlights:[String]
    
}


class Ingredients: Identifiable, Decodable{
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
    
    
}
