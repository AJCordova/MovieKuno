//
//  OnboardingUITests.swift
//  MovieKunoUITests
//
//  Created by Amiel Jireh Cordova on 1/29/21.
//

import XCTest

class OnboardingUITests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
    
    func testOnboardingPanelDisplay() {
        let viewTitle = app.staticTexts["MovieKuno"]
        XCTAssert(viewTitle.exists)
        let skipButton = app.buttons["Get Started"]
        XCTAssert(skipButton.exists)
        let navigationButton = app.buttons["Explore"]
        XCTAssert(navigationButton.exists)
        let showcasePanelText = app.staticTexts["Panel description."]
        XCTAssert(showcasePanelText.exists)
    }
    
    func skipOnboarding() {
        let skipButton = app.buttons["Get Started"]
        skipButton.tap()
    }
}
