//
//  MovieKunoUITests.swift
//  MovieKunoUITests
//
//  Created by Amiel Jireh Cordova on 1/20/21.
//

import XCTest

class MovieKunoUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
    
    func testAccessHomeView() {
        let tabBar = app.tabBars["Tab Bar"]
        tabBar.buttons["Home"].tap()
        let latestMovie = app.staticTexts["Latest Movie"]
        XCTAssertTrue(latestMovie.exists)
        takeScreenshot(description: "Latest-Movie")
    }
    
    func testAccessSearchView() {
        let tabBar = app.tabBars["Tab Bar"]
        tabBar.buttons["Search"].tap()
        let searchView = app.staticTexts["Search View"]
        XCTAssertTrue(searchView.exists)
        takeScreenshot(description: "Search-View")
    }
    
    func testAccessSettingsView() {
        let tabBar = app.tabBars["Tab Bar"]
        tabBar.buttons["Settings"].tap()
        let settingsView = app.staticTexts["Settings View"]
        XCTAssertTrue(settingsView.exists)
        takeScreenshot(description: "Settings-View")
    }
}
