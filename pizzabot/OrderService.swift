//
//  File.swift
//  
//
//  Created by Dzmitry on 14.09.21.
//

import Foundation

public class OrderService {
    public func getOrderLocations(_ ordersListString: String) -> [Location?]? {
        do {
            let regex = try NSRegularExpression(pattern: REGEX_COORDINATE)
            let matches = regex.matches(in: ordersListString, options: [], range: NSRange(location: 0, length: ordersListString.utf16.count))
            if matches.count > 0 {
                let orderLocationList = matches.map { match -> Location? in
                    let locationString = String(ordersListString[Range(match.range, in: ordersListString)!])
                    let coordinatesArray = locationString.replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").split(separator: ",")
                    print(coordinatesArray)
                    guard let x = Int(coordinatesArray[0]), let y = Int(coordinatesArray[1]) else {
                        print("Sorry cannot get coordinated")
                        return nil
                    }
                    let orderLocation = Location(x: x, y: y)
                    return orderLocation
                }
                return orderLocationList
            } else {
                return nil
            }
        } catch {
            print("Ooops, something went wrong with order locations")
            return nil
        }
    }
    
    public func getMapSize(_ ordersListString: String) -> Location? {
        do {
            let regex = try NSRegularExpression(pattern: REGEX_MAP_SIZE)
            let matches = regex.matches(in: ordersListString, options: [], range: NSRange(location: 0, length: ordersListString.utf16.count))
            if matches.count > 0 {
                let mapResult = matches.map { match -> Location in
                    let mapSizeString = String(ordersListString[Range(match.range, in: ordersListString)!])
                    let mapSizeArray = mapSizeString.split(separator: "x")
                    return Location(x: Int(mapSizeArray[0])!, y: Int(mapSizeArray[1])!)
                }
                
                return mapResult[0]
            } else {
                return nil
            }
        } catch {
            print("Ooops, something went wrong with the map")
            return nil
        }
    }
}
