//  RestartTechJobTest
//
//  Created by Bishoy Hanna on 8/1/19.
//  Copyright © 2019 Bishoy Hanna. All rights reserved.

import Foundation 
import ObjectMapper


class Data : NSObject, NSCoding, Mappable{

	var attractions : [Attraction]?
	var events : [Event]?
	var hotSpots : [HotSpot]?


	class func newInstance(map: Map) -> Mappable?{
		return Data()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		attractions <- map["attractions"]
		events <- map["events"]
		hotSpots <- map["hot_spots"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         attractions = aDecoder.decodeObject(forKey: "attractions") as? [Attraction]
         events = aDecoder.decodeObject(forKey: "events") as? [Event]
         hotSpots = aDecoder.decodeObject(forKey: "hot_spots") as? [HotSpot]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if attractions != nil{
			aCoder.encode(attractions, forKey: "attractions")
		}
		if events != nil{
			aCoder.encode(events, forKey: "events")
		}
		if hotSpots != nil{
			aCoder.encode(hotSpots, forKey: "hot_spots")
		}

	}

}
