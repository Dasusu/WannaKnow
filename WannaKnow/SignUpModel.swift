//
//  SignUpModel.swift
//  WannaKnow
//
//  Created by Dasu on 2022/2/18.
//

import Foundation

struct SignUp {

    var speaker: String = ""
    var date: Date = Date()
    var catrgory: Catrgorys = .none
    var title: String = ""
    var attachment: String = ""
    var live: Bool = true
    var tags: String = ""
    var discription: String = ""
    
    enum Catrgorys:Int,CaseIterable {
        case project = 0,learning,technic,career,life,none
        var catrgorys: String{
            switch self{
            case .project:
                return "專案經驗"
            case .learning:
                return "學習小心得"
            case .technic:
                return "技術剖析"
            case .career:
                return "職場工作"
            case .life:
                return "生活頻道"
            case .none:
                return "請選擇分類"
                
            }
        }
    }
    
    var dateString: String {
        let format = DateFormatter()
        format.dateStyle = .long
        format.locale = Locale(identifier: "zh_Hant_TW")
        return format.string(from: date)
    }
    
    enum AllName: Int,CaseIterable {
        case speakerName = 0,dateName,catrogtyName,titleName,attachmentName,liveName,tagsName
        var names: String{
            switch self{
            case .speakerName:
                return "分享人"
            case .dateName:
                return "日期"
            case .catrogtyName:
                return "分類"
            case .titleName:
                return "主題"
            case .attachmentName:
                return ""
            case .liveName:
                return "分享方式"
            case .tagsName:
                return "標籤"
            }
            
        }
    }
    
    
    
}
