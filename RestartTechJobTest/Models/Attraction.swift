//  RestartTechJobTest
//
//  Created by Bishoy Hanna on 8/1/19.
//  Copyright © 2019 Bishoy Hanna. All rights reserved.

import Foundation
import ObjectMapper


class Attraction : NSObject, NSCoding, Mappable{

	var arabicDescription : AnyObject?
	var arabicName : AnyObject?
	var categories : [Category]?
	var descriptionField : String?
	var facebook : AnyObject?
	var features : [Feature]?
	var id : Int?
	var instagram : AnyObject?
	var isActive : AnyObject?
	var lat : AnyObject?
	var lng : AnyObject?
	var name : String?
	var offers : [AnyObject]?
	var photos : [String]?
	var trypsId : AnyObject?
	var twitter : AnyObject?
	var workingHours : [AnyObject]?


	class func newInstance(map: Map) -> Mappable?{
		return Attraction()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		arabicDescription <- map["arabic_description"]
		arabicName <- map["arabic_name"]
		categories <- map["categories"]
		descriptionField <- map["description"]
		facebook <- map["facebook"]
		features <- map["features"]
		id <- map["id"]
		instagram <- map["instagram"]
		isActive <- map["is_active"]
		lat <- map["lat"]
		lng <- map["lng"]
		name <- map["name"]
		offers <- map["offers"]
		photos <- map["photos"]
		trypsId <- map["tryps_id"]
		twitter <- map["twitter"]
		workingHours <- map["working_hours"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         arabicDescription = aDecoder.decodeObject(forKey: "arabic_description") as? AnyObject
         arabicName = aDecoder.decodeObject(forKey: "arabic_name") as? AnyObject
         categories = aDecoder.decodeObject(forKey: "categories") as? [Category]
         descriptionField = aDecoder.decodeObject(forKey: "description") as? String
         facebook = aDecoder.decodeObject(forKey: "facebook") as? AnyObject
         features = aDecoder.decodeObject(forKey: "features") as? [Feature]
         id = aDecoder.decodeObject(forKey: "id") as? Int
         instagram = aDecoder.decodeObject(forKey: "instagram") as? AnyObject
         isActive = aDecoder.decodeObject(forKey: "is_active") as? AnyObject
         lat = aDecoder.decodeObject(forKey: "lat") as? AnyObject
         lng = aDecoder.decodeObject(forKey: "lng") as? AnyObject
         name = aDecoder.decodeObject(forKey: "name") as? String
         offers = aDecoder.decodeObject(forKey: "offers") as? [AnyObject]
         photos = aDecoder.decodeObject(forKey: "photos") as? [String]
         trypsId = aDecoder.decodeObject(forKey: "tryps_id") as? AnyObject
         twitter = aDecoder.decodeObject(forKey: "twitter") as? AnyObject
         workingHours = aDecoder.decodeObject(forKey: "working_hours") as? [AnyObject]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if arabicDescription != nil{
			aCoder.encode(arabicDescription, forKey: "arabic_description")
		}
		if arabicName != nil{
			aCoder.encode(arabicName, forKey: "arabic_name")
		}
		if categories != nil{
			aCoder.encode(categories, forKey: "categories")
		}
		if descriptionField != nil{
			aCoder.encode(descriptionField, forKey: "description")
		}
		if facebook != nil{
			aCoder.encode(facebook, forKey: "facebook")
		}
		if features != nil{
			aCoder.encode(features, forKey: "features")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if instagram != nil{
			aCoder.encode(instagram, forKey: "instagram")
		}
		if isActive != nil{
			aCoder.encode(isActive, forKey: "is_active")
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
		if offers != nil{
			aCoder.encode(offers, forKey: "offers")
		}
		if photos != nil{
			aCoder.encode(photos, forKey: "photos")
		}
		if trypsId != nil{
			aCoder.encode(trypsId, forKey: "tryps_id")
		}
		if twitter != nil{
			aCoder.encode(twitter, forKey: "twitter")
		}
		if workingHours != nil{
			aCoder.encode(workingHours, forKey: "working_hours")
		}

	}

}
