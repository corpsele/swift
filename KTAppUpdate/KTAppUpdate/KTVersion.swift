//
//  KTVersion.swift
//  KTAppUpdate
//
//  Created by ucfadmin on 2017/10/20.
//  Copyright © 2017年 corpse. All rights reserved.
//

import UIKit

class KTVersion: NSObject {
    /// 定义版本号字符串
    public var strVersion: String!;
    
    // MARK: 比对版本方法
    /// * 方法：比对版本方法
    /// - Returns: 返回Bool值
    //**! 版本 **/
    func compareVersion(ver: String) -> Bool
    {
        strVersion = ver;
        if strVersion.isEmpty
        {
            return false;
        }else if strVersion == "1.0"
        {
            return true;
        }
        return false;
    }

}
