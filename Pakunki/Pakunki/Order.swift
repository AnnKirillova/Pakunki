//
//  Order.swift
//  Pakunki
//
//  Created by Ann on 25.04.2021.
//

import Foundation
class Order {
    var id: String
    var firstName: String
    var secondName: String
    var phoneNumber: String
    var adress1: String
    var adress2: String
    var city: String
    var zipCode: String
    var sate: String
    var isActive: Bool
    
    init (id: String,
          firstName: String,
          secondName: String,
          phoneNumber: String,
          adress1: String,
          adress2: String,
          city: String,
          zipCode: String,
          sate: String,
          isActive: Bool){
        self.id = id
        self.firstName = firstName
        self.secondName = secondName
        self.phoneNumber = phoneNumber
        self.adress1 = adress1
        self.adress2 = adress2
        self.city = city
        self.zipCode = zipCode
        self.sate = sate
        self.isActive = isActive
    }
}
