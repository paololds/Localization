//
//  LocalizationTests.swift
//  LocalizationTests
//
//  Created by Paolo Ladisa on 05/09/2018.
//  Copyright © 2018 Paolo Ladisa. All rights reserved.
//

import XCTest
@testable import Localization

class LocalizationTests: XCTestCase {
    
    var viewController:ViewController?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewController = nil
        super.tearDown()
    }
    
    func testLocalization() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let localizedBeers = NSLocalizedString("%d beer(s)",
                                               comment: "number of beers")
        
        let localizationCounter  = viewController?.localizedStringWithValue(string: localizedBeers,
                                                                            counter: 3)
        
        XCTAssertEqual(localizationCounter, "3 beers", "Wrong string")
    }
    
}
