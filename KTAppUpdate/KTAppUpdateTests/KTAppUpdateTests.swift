//
//  KTAppUpdateTests.swift
//  KTAppUpdateTests
//
//  Created by ucfadmin on 2017/10/20.
//  Copyright © 2017年 corpse. All rights reserved.
//

import XCTest
@testable import KTAppUpdate

class KTAppUpdateTests: XCTestCase {
    
    // MARK: 初始化
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }
    
    // MARK: 销毁
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        XCTAssert(initVersion());
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    /// MARK: 初始化版本类
    func initVersion() -> Bool {
        var flag: Bool = false;
        autoreleasepool{
            do{
                let version = KTVersion.init();
                if version.compareVersion(ver: "1.0")
                {
                    flag = true;
                }else{
                    flag = false;
                }
              
            }catch let e{
                print(e);
                flag = false;
            }
        }
        return flag;
    }
    
}
