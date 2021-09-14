//
//  pizzabotTest.swift
//  pizzabotTest
//
//  Created by Dzmitry on 14.09.21.
//

import XCTest
import pizzabot

class pizzabotTest: XCTestCase {
    var orderService: OrderService!
    var bot: PizzaDeliveryBot!

    override func setUp() {
        super.setUp()
        orderService = OrderService()
        bot = PizzaDeliveryBot()
    }
    
    func testMatSize() throws {
        let mapSize = orderService.getMapSize("5x6(1,2)")
        XCTAssertNotNil(mapSize, "The map size is nil")
        if let map = mapSize {
            XCTAssertEqual(map, Location(x: 5, y: 6))
        }
    }
    
    func testLocations() throws {
        let locationsResult = orderService.getOrderLocations("5x6(1,2)")
        XCTAssertNotNil(locationsResult, "The map size is nil")
        if let locations = locationsResult {
            XCTAssertEqual([Location(x: 1, y: 2)], locations)
        }
    }

}
