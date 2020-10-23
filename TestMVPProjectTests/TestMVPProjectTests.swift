//
//  TestMVPProjectTests.swift
//  TestMVPProjectTests
//
//  Created by Алексей Селиванов on 23.10.2020.
//  Copyright © 2020 Alexey Selivanov. All rights reserved.
//

import XCTest
@testable import TestMVPProject

class MockView: MainViewProtocol {
    var titleTest: String?
    
    func setGreeting(greeting: String) {
        self.titleTest = greeting
    }
}

class TestMVPProjectTests: XCTestCase {
    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!
    
    override func setUp() {
        view = MockView()
        person = Person(firstName: "foo", lastName: "bar")
        presenter = MainPresenter(view: view, person: person)
    }

    override func tearDownWithError() throws {
        view = nil
        person = nil
        presenter = nil
    }

    func testModuleIsNotNil() throws {
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(person, "person is not nil")
        XCTAssertNotNil(presenter, "presenter is not nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "foo bar")
    }
    
    func testPersonModel() {
        XCTAssertEqual(person.firstName, "foo")
        XCTAssertEqual(person.lastName, "bar")
    }
}
