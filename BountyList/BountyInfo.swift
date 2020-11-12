//
//  BountyInfo.swift
//  BountyList
//
//  Created by 김태훈 on 2020/11/12.
//

import UIKit

class BountyInfo {
    var name: String
    var bounty: Int
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String, bounty: Int){
        self.name = name
        self.bounty = bounty
    }
}
