//
//  ViewControllerTests.swift
//  SnapshotExampleTests
//
//  Created by enadolinskaia on 23.04.2023.
//

import XCTest
import SnapshotTesting

final class ViewControllerTests: XCTestCase {
    
    var sut: UIViewController!

    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as! UIViewController

    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testDefaultState() {
        assertSnapshot(matching: sut, as: .image)
        
    }
   
    func testDarkMode() {
        sut.isDarkMode = true
        assertSnapshot(matching: sut, as: .image)
    }
    


}
