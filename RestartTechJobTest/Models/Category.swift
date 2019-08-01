//  RestartTechJobTest
//
//  Created by Bishoy Hanna on 8/1/19.
//  Copyright © 2019 Bishoy Hanna. All rights reserved.

import Foundation 
import ObjectMapper


class Category : NSObject, NSCoding, Mappable{

	var arName : AnyObject?
	var coverImageUrl : String?
	var iconImageUrl : String?
	var id : Int?
	var name : String?
	var adrName : String?
	var order : AnyObject?


	class func newInstance(map: Map) -> Mappable?{
		return Category()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		arName <- map["ar_name"]
		coverImageUrl <- map["cover_image_url"]
		iconImageUrl <- map["icon_image_url"]
		id <- map["id"]
		name <- map["name"]
		arName <- map["ar_name"]
		order <- map["order"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         arName = aDecoder.decodeObject(forKey: "ar_name") as? AnyObject
         coverImageUrl = aDecoder.decodeObject(forKey: "cover_image_url") as? String
         iconImageUrl = aDecoder.decodeObject(forKey: "icon_image_url") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         name = aDecoder.decodeObject(forKey: "name") as? String
         adrName = aDecoder.decodeObject(forKey: "ar_name") as? String
         order = aDecoder.decodeObject(forKey: "order") as? AnyObject

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if arName != nil{
			aCoder.encode(arName, forKey: "ar_name")
		}
		if coverImageUrl != nil{
			aCoder.encode(coverImageUrl, forKey: "cover_image_url")
		}
		if iconImageUrl != nil{
			aCoder.encode(iconImageUrl, forKey: "icon_image_url")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if arName != nil{
			aCoder.encode(arName, forKey: "ar_name")
		}
		if order != nil{
			aCoder.encode(order, forKey: "order")
		}

	}

}
