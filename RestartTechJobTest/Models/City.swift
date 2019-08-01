//  RestartTechJobTest
//
//  Created by Bishoy Hanna on 8/1/19.
//  Copyright © 2019 Bishoy Hanna. All rights reserved.

import Foundation 
import ObjectMapper


class City : NSObject, NSCoding, Mappable{

	var id : Int?
	var lat : AnyObject?
	var lng : AnyObject?
	var name : String?
	var zoom : AnyObject?


	class func newInstance(map: Map) -> Mappable?{
		return City()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		id <- map["id"]
		lat <- map["lat"]
		lng <- map["lng"]
		name <- map["name"]
		zoom <- map["zoom"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         id = aDecoder.decodeObject(forKey: "id") as? Int
         lat = aDecoder.decodeObject(forKey: "lat") as? AnyObject
         lng = aDecoder.decodeObject(forKey: "lng") as? AnyObject
         name = aDecoder.decodeObject(forKey: "name") as? String
         zoom = aDecoder.decodeObject(forKey: "zoom") as? AnyObject

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if lat != nil{
			aCoder.encode(lat, forKey: "lat")
		}
		if lng != nil{
			aCoder.encode(lng, forKey: "lng")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if zoom != nil{
			aCoder.encode(zoom, forKey: "zoom")
		}

	}

}
