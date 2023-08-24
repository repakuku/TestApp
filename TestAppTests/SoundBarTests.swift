//
//  SoundBarTests.swift
//  SoundBarTests
//
//  Created by Alexey Turulin on 8/23/23.
//

import XCTest
@testable import TestApp

final class SoundBarTests: XCTestCase {
    
    var sut: SoundBar!
    var items: [String] = []

    override func setUp() {
        super.setUp()
        sut = SoundBar()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testSetVolumeShouldBeReturn0WhenLowestVolume() throws {
        // given
        sut.setVolume(to: -1)

        // when
        let volume = sut.volume

        // then
        XCTAssert(volume == 0, "Lowest volume should be equal 0")
    }
    
    func testSetVolumeShouldBeReturn100WhenHighestVolume() throws {
        sut.setVolume(to: 101)
        XCTAssert(sut.volume == 100, "Highest volume should be equal 100")
    }

    func testPerformanceExample() throws {
        measure {
             getMoreItems()
        }
    }
    
    private func getItems() {
        let numbers = 1...1_000_000
        
        for number in numbers {
            let item = "Item: \(number)"
            items.append(item)
        }
    }
    
    private func getMoreItems() {
        items = (1...1_000_000).map { "Item: \($0)"}
    }

}
