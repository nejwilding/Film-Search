//
//  MainViewControllerTests.swift
//  Film Search
//
//  Created by Nicholas Wilding on 12/09/2016.
//  Copyright © 2016 Nicholas Wilding. All rights reserved.
//

import XCTest
@testable import Film_Search

class MainViewControllerTests: XCTestCase {
    
    var sut: MainViewController! = nil
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        _ = sut.view
    }
    
    override func tearDown() {
       	sut = nil
        super.tearDown()
    }
    
    func testVC_UnderTest_Exists() {
        XCTAssertNotNil(sut)
    }
    
    func testVC_Outlets_Setup() {
        XCTAssertNotNil(sut.searchTextField)
        XCTAssertNotNil(sut.logoImageView)
        XCTAssertNotNil(sut.resultsTableView)
    }
    
}
//func test_TableViewHasOneSection() {
//    XCTAssertEqual(sut.tableView.numberOfSections, 1, "Should only have 1 section")
//}
//
//func test_TableView_HasTwoRows() {
//    
//    sut.tableView.reloadData()
//    
//    XCTAssertEqual(sut.tableView.numberOfRowsInSection(0), 2, "Two static rows")
//}
//

//
//func testVC_Outlets_Setup() {
//    expect(self.sut.imageView).toNot(beNil())
//    expect(self.sut.titleLabel).toNot(beNil())
//    expect(self.sut.detailTextView).toNot(beNil())
//}

