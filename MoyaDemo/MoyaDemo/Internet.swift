//
//  Internet.swift
//  MoyaDemo
//
//  Created by 吴浩 on 2018/3/9.
//  Copyright © 2018年 wuhao. All rights reserved.
//

import UIKit
import ObjectMapper

class Internet: Mappable {
    
    var origin: String = ""
    var url: String = ""
    var Connection: String = ""
    var Host: String = ""
    var Agent: String = ""
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        origin      <- map["origin"]
        url         <- map["url"]
        Connection  <- map["headers.Connection"]
        Host        <- map["headers.Host"]
        Agent       <- map["headers.User-Agent"]
    }
}
