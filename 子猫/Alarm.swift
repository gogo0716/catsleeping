//
//  alarm.swift
//  子猫
//
//  Created by 川口剛司 on H29/01/31.
//  Copyright © 平成29年 川口剛司. All rights reserved.
//

import Foundation

class Alarm {
    var title: String?
    var time: Date?
    var duration: Int?
    var musicURL: String?
    var vibration: Bool?
}
func initalAlarm() -> Alarm {
    return  Alarm()
}
