//  RestartTechJobTest
//
//  Created by Bishoy Hanna on 8/1/19.
//  Copyright © 2019 Bishoy Hanna. All rights reserved.

import Foundation 
import ObjectMapper


class Neighborhood : NSObject, NSCoding, Mappable{

	var arabicName : String?
	var cityId : Int?
	var createdAt : String?
	var id : Int?
	var lat : AnyObject?
	var lng : AnyObject?
	var name : String?
	var updatedAt : String?
	var zoom : AnyObject?


	class func newInstance(map: Map) -> Mappable?{
		return Neighborhood()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		arabicName <- map["arabic_name"]
		cityId <- map["city_id"]
		createdAt <- map["created_at"]
		id <- map["id"]
		lat <- map["lat"]
		lng <- map["lng"]
		name <- map["name"]
		updatedAt <- map["updated_at"]
		zoom <- map["zoom"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         arabicName = aDecoder.decodeObject(forKey: "arabic_name") as? String
         cityId = aDecoder.decodeObject(forKey: "city_id") as? Int
         createdAt = aDecoder.decodeObject(forKey: "created_at") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         lat = aDecoder.decodeObject(forKey: "lat") as? AnyObject
         lng = aDecoder.decodeObject(forKey: "lng") as? AnyObject
         name = aDecoder.decodeObject(forKey: "name") as? String
         updatedAt = aDecoder.decodeObject(forKey: "updated_at") as? String
         zoom = aDecoder.decodeObject(forKey: "zoom") as? AnyObject

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if arabicName != nil{
			aCoder.encode(arabicName, forKey: "arabic_name")
		}
		if cityId != nil{
			aCoder.encode(cityId, forKey: "city_id")
		}
		if createdAt != nil{
			aCoder.encode(createdAt, forKey: "created_at")
		}
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
		if updatedAt != nil{
			aCoder.encode(updatedAt, forKey: "updated_at")
		}
		if zoom != nil{
			aCoder.encode(zoom, forKey: "zoom")
		}

	}

}
