//
//  ViewController.swift
//  MoyaDemo
//  https://www.jianshu.com/p/b0f0fb4189ba
//  Created by 吴浩 on 2018/3/7.
//  Copyright © 2018年 wuhao. All rights reserved.
//  https://github.com/remember17/MoyaDemo

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WHNetwork.request(target: .demo1, success: { (result) in
            whLog(result)
            guard let internet = Internet(JSON: (result as! [String : AnyObject])) else { return }
            whLog(internet.origin)
            whLog(internet.url)
            whLog(internet.Connection)
            whLog(internet.Host)
            whLog(internet.Agent)
        }) { (error) in
            whLog(error.localizedDescription)
        }
        
        WHNetwork.request(target: .demo2(name: "wuhao"), success: { (result) in
            whLog(result)
        }) { (error) in
            whLog(error.localizedDescription)
        }

        WHNetwork.request(target: .demo3(name: "wuhao", score: 100), success: { (result) in
            whLog(result)
        }) { (error) in
            whLog(error.localizedDescription)
        }
        
    }
    
}

