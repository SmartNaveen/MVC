//
//  AmazonData.swift
//  MVC
//
//  Created by Mr. Naveen Kumar on 28/03/21.
//

import Foundation
import UIKit

class AmazonData: NSObject {
    static let share = AmazonData()
    func getUserData() -> [AmazonModel] {
        var arrData = [AmazonModel]()
        arrData = [
            AmazonModel(userImage: UIImage(systemName: "appletv"), userName: "Naveen Kumar"),
            AmazonModel(userImage: UIImage(systemName: "appletv.fill"), userName: "Golu Kumar"),
            AmazonModel(userImage: UIImage(systemName: "applelogo"), userName: "Mohan Kumar"),
            AmazonModel(userImage: UIImage(systemName: "appletv"), userName: "NoNi"),
            AmazonModel(userImage: UIImage(systemName: "applelogo"), userName: "Competition"),
            AmazonModel(userImage: UIImage(systemName: "appletv.fill"), userName: "Vevo"),
            AmazonModel(userImage: UIImage(systemName: "appletv"), userName: "Apple"),
            AmazonModel(userImage: UIImage(systemName: "applelogo"), userName: "Samsung"),
            AmazonModel(userImage: UIImage(systemName: "applelogo"), userName: "Pulsar"),
            AmazonModel(userImage: UIImage(systemName: "applelogo"), userName: "Bike"),
        ]
        return arrData
    }
    
}
