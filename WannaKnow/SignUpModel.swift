//
//  SignUpModel.swift
//  WannaKnow
//
//  Created by Dasu on 2022/2/18.
//

import Foundation
import UIKit

struct SignUp {

    var speaker: String = ""
    var date: Date = Date()
    var catrgory: String = ""
    var title: String = ""
    var attachment: String = ""
    var live: Bool = true
    var tags: String = ""
    var discription: String = ""
    
    
    var dateString: String {
        let format = DateFormatter()
        format.dateStyle = .long
        format.locale = Locale(identifier: "zh_Hant_TW")
        return format.string(from: date)
    }
}

