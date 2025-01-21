//
//  AmazonData.swift
//  MVCPattern
//
//  Created by Kumari Mansi on 05/12/24.
//

import Foundation
import UIKit
class AmazonData{
    static func getAllAmazonData() -> [AmazonModel]{
        var arrData = [AmazonModel]()
        arrData = [
            //AmazonModel(img: flower, titleStr: "Image 1"),
            AmazonModel(img: UIImage(named: "flower")!, titleStr: "Image 1"),
            AmazonModel(img: UIImage(named: "flower 1")!, titleStr: "Image 2"),
            AmazonModel(img: UIImage(named: "flower 2")!, titleStr: "Image 3"),
            AmazonModel(img: UIImage(named: "flower 3")!, titleStr: "Image 4"),
            AmazonModel(img: UIImage(named: "flower")!, titleStr: "Image 5"),
            AmazonModel(img: UIImage(named: "flower 1")!, titleStr: "Image 6"),
            AmazonModel(img: UIImage(named: "flower 2")!, titleStr: "Image 7"),
            AmazonModel(img: UIImage(named: "flower 3")!, titleStr: "Image 8")
            
            
            
        ]
        return arrData
    }
}
