import ArgumentParser
import Foundation

public struct PizzaBot: ParsableCommand {
    public init() {}
    
    @Argument()
    public var orderLocationsArgument: String
    
    public func run() throws {
        let orderService = OrderService()
        let pizzaDeliveryBot = PizzaDeliveryBot()
        let orderLocations = orderService.getOrderLocations(orderLocationsArgument)
        let mapSize = orderService.getMapSize(orderLocationsArgument)

        guard let orderLocationList = orderLocations, let map = mapSize else {
            print("No orders")
            return
        }
        pizzaDeliveryBot.orders = orderLocationList
        pizzaDeliveryBot.mapSize = map
        pizzaDeliveryBot.startDelivery()
    }
}

PizzaBot.main()
