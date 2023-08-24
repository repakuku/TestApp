//
//  PersonTests.swift
//  TestAppTests
//
//  Created by Alexey Turulin on 8/24/23.
//

import XCTest
@testable import TestApp

final class PersonTests: XCTestCase {
    
    var person: Person!

    override func setUp() {
        super.setUp()
        person = Person(
            name: "Foo",
            surname: "Bar",
            phone: "Baz"
        )
    }

    override func tearDown() {
        person = nil
        super.tearDown()
    }

    func testInitInstancePersonWithNameAndPhone() {
        XCTAssertEqual(person.name, "Foo")
        XCTAssertEqual(person.phone, "Baz")
    }
    
    func testInitInstancePersonWithFullNameAndPhone() {
        XCTAssertEqual(person.surname, "Bar")
    }
    
    func testInitInstancePersonWithImage() {
        let image = UIImage(systemName: "person.circle")
        let imageData = image?.pngData()
        let person = Person(
            name: "Foo",
            surname: "Bar",
            phone: "Baz",
            imageData: imageData)
        XCTAssertNotNil(person.imageData)
    }
}
