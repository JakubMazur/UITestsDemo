//
//  UITestsDemoUITests.swift
//  UITestsDemoUITests
//
//  Created by Jakub Mazur on 27/10/2022.
//

import XCTest

class UITestsDemoUITests: XCTestCase {
	
	private let app: XCUIApplication = .init()
	
	private let buttonLabel: String = "Tap Me!"
	
	override func setUp() {
		super.setUp()
		app.launch()
	}

	func testThatDoesntWork() {
		app.buttons[buttonLabel].tap()
	}
	
	func testThatDoWorkButItsSlow() {
		app.scrollViews.firstMatch.swipeUp()
		app.buttons[buttonLabel].tap()
	}
}
