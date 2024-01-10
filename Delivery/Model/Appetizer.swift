//
//  Appetizer.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 8.01.2024.
//

import Foundation

struct Appetizers: Decodable, Identifiable  {
    
    let id :Int
    let name: String
    let descripton: String
    let price: Double
    let imageName: String
    let calories: Int
    let protein: Int
    let carbs: Int
   
}

struct AppetizersRespose:  Decodable{
    
    let request: [Appetizers]
}

struct MockData{
    
    static let sampleAppetizer=Appetizers(id: 0001,
                                          
                                          name:"asian-flank-steak",
                                          descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                          price: 19.99,
                                          imageName: "asian-flank-steak",
                                          calories: 90,
                                          protein: 20,
                                          carbs: 330)
    static let sampleAppetizer2=Appetizers(id: 0002,
                                           
                                           name:"blackened-shrimp ",
                                           descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                           price: 22.99,
                                           imageName: "blackened-shrimp",
                                           calories: 90,
                                           protein: 20,
                                           carbs: 330)
    static let sampleAppetizer3=Appetizers(id: 0003,
                                           
                                           name:"buffalo-chicken-bites",
                                           descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                           price: 14.00,
                                           imageName: "buffalo-chicken-bites",
                                           calories: 90,
                                           protein: 20,
                                           carbs: 330)
    static let sampleAppetizer4=Appetizers(id: 0004,
                                           
                                           name:"chicken-avocado-spring-roll ",
                                           descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                           price: 9.99,
                                           imageName: "chicken-avocado-spring-roll",
                                           calories: 90,
                                           protein: 20,
                                           carbs: 330)
    static let sampleAppetizer5=Appetizers(id: 0005,
                                           
                                           name:"chicken-dumplings",
                                           descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                           price: 12.00,
                                           imageName: "chicken-dumplings",
                                           calories: 90,
                                           protein: 20,
                                           carbs: 330)
    static let sampleAppetizer6=Appetizers(id: 0006,
                                           
                                           name:"chicken-fingers ",
                                           descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                           price: 8.99,
                                           imageName: "chicken-fingers",
                                           calories: 90,
                                           protein: 20,
                                           carbs: 330)
    static let sampleAppetizer7=Appetizers(id: 0007,
                                           
                                           name:"chicken-wings ",
                                           descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                           price: 9.99,
                                           imageName: "chicken-wings",
                                           calories: 90,
                                           protein: 20,
                                           carbs: 330)
    static let sampleAppetizer8=Appetizers(id: 0008,
                                           
                                           name:"fried-cheese-ravioli ",
                                           descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                           price: 10.99,
                                           imageName: "fried-cheese-ravioli",
                                           calories: 90,
                                           protein: 20,
                                           carbs: 330)
    static let sampleAppetizer9=Appetizers(id: 0009,
                                           
                                           name:"jumbo-tater-tot ",
                                           descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                           price: 19.99,
                                           imageName: "jumbo-tater-tot",
                                           calories: 90,
                                           protein: 20,
                                           carbs: 330)
    static let sampleAppetizer10=Appetizers(id: 0010,
                                            
                                            name:"meatballs ",
                                            descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                            price: 17.99,
                                            imageName: "meatballs",
                                            calories: 90,
                                            protein: 20,
                                            carbs: 330)
    static let sampleAppetizer11=Appetizers(id: 0011,
                                            
                                            name:"mozzarella-sticks ",
                                            descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                            price: 5.99,
                                            imageName: "mozzarella-sticks",
                                            calories: 90,
                                            protein: 20,
                                            carbs: 330)
    static let sampleAppetizer12=Appetizers(id: 0012,
                                            
                                            name:"philly-cheesesteak-sliders ",
                                            descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                            price: 19.99,
                                            imageName: "philly-cheesesteak-sliders",
                                            calories: 90,
                                            protein: 20,
                                            carbs: 330)
    static let sampleAppetizer13=Appetizers(id: 0013,
                                            
                                            name:"rainbow-spring-rolls ",
                                            descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                            price: 14.99,
                                            imageName: "rainbow-spring-rolls",
                                            calories: 90,
                                            protein: 20,
                                            carbs: 330)
    static let sampleAppetizer14=Appetizers(id: 0014,
                                            
                                            name:"asian-flank-steak ",
                                            descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                            price: 19.99,
                                            imageName: "asian-flank-steak",
                                            calories: 90,
                                            protein: 20,
                                            carbs: 330)
    
    static let appetizers = [sampleAppetizer,  sampleAppetizer2, sampleAppetizer3,sampleAppetizer4,sampleAppetizer5,sampleAppetizer6,sampleAppetizer7,sampleAppetizer8,sampleAppetizer9,sampleAppetizer10,sampleAppetizer11,sampleAppetizer12,sampleAppetizer13,sampleAppetizer14]
    
    
    static let OrderItemOne = Appetizers(id: 0001,
                                         
                                         name:"asian-flank-steak ",
                                         descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                         price: 19.99,
                                         imageName: "",
                                         calories: 90,
                                         protein: 20,
                                         carbs: 330)
    
    static let OrderItemtwo = Appetizers(id: 0002,
                                         
                                         name:"blackened-shrimp  ",
                                         descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                         price: 22.99,
                                         imageName: "",
                                         calories: 90,
                                         protein: 20,
                                         carbs: 330)
    
    static let OrderItemthree = Appetizers(id: 0003,
                                           
                                           name:"buffalo-chicken-bites  ",
                                           descripton:" This is the  description for my  appetizer. ıt's yummy." ,
                                           price: 14.99,
                                           imageName: "",
                                           calories: 90,
                                           protein: 20,
                                           carbs: 330)
    
    
    static let orderItem = [OrderItemOne, OrderItemtwo, OrderItemthree]
}
