//  RestartTechJobTest
//
//  Created by Bishoy Hanna on 8/1/19.
//  Copyright © 2019 Bishoy Hanna. All rights reserved.

import Foundation 
import ObjectMapper


class Event : NSObject, NSCoding, Mappable{

	var address : AnyObject?
	var arabicDescription : String?
	var arabicName : String?
	var arabicShortDescription : AnyObject?
	var categories : [Category]?
	var city : City?
	var cityId : Int?
	var descriptionField : String?
	var endDate : String?
	var facebook : AnyObject?
	var features : [Feature]?
	var id : Int?
	var instagram : AnyObject?
	var lat : AnyObject?
	var lng : AnyObject?
	var name : String?
	var offers : [AnyObject]?
	var photos : [String]?
	var pricePerDay : AnyObject?
	var shortDescription : AnyObject?
	var startDate : String?
	var ticketPrice : AnyObject?
	var twitter : AnyObject?
	var views : Int?
	var website : AnyObject?
	var wholePrice : AnyObject?


	class func newInstance(map: Map) -> Mappable?{
		return Event()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		address <- map["address"]
		arabicDescription <- map["arabic_description"]
		arabicName <- map["arabic_name"]
		arabicShortDescription <- map["arabic_short_description"]
		categories <- map["categories"]
		city <- map["city"]
		cityId <- map["city_id"]
		descriptionField <- map["description"]
		endDate <- map["end_date"]
		facebook <- map["facebook"]
		features <- map["features"]
		id <- map["id"]
		instagram <- map["instagram"]
		lat <- map["lat"]
		lng <- map["lng"]
		name <- map["name"]
		offers <- map["offers"]
		photos <- map["photos"]
		pricePerDay <- map["price_per_day"]
		shortDescription <- map["short_description"]
		startDate <- map["start_date"]
		ticketPrice <- map["ticket_price"]
		twitter <- map["twitter"]
		views <- map["views"]
		website <- map["website"]
		wholePrice <- map["whole_price"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         address = aDecoder.decodeObject(forKey: "address") as? AnyObject
         arabicDescription = aDecoder.decodeObject(forKey: "arabic_description") as? String
         arabicName = aDecoder.decodeObject(forKey: "arabic_name") as? String
         arabicShortDescription = aDecoder.decodeObject(forKey: "arabic_short_description") as? AnyObject
         categories = aDecoder.decodeObject(forKey: "categories") as? [Category]
         city = aDecoder.decodeObject(forKey: "city") as? City
         cityId = aDecoder.decodeObject(forKey: "city_id") as? Int
         descriptionField = aDecoder.decodeObject(forKey: "description") as? String
         endDate = aDecoder.decodeObject(forKey: "end_date") as? String
         facebook = aDecoder.decodeObject(forKey: "facebook") as? AnyObject
         features = aDecoder.decodeObject(forKey: "features") as? [Feature]
         id = aDecoder.decodeObject(forKey: "id") as? Int
         instagram = aDecoder.decodeObject(forKey: "instagram") as? AnyObject
         lat = aDecoder.decodeObject(forKey: "lat") as? AnyObject
         lng = aDecoder.decodeObject(forKey: "lng") as? AnyObject
         name = aDecoder.decodeObject(forKey: "name") as? String
         offers = aDecoder.decodeObject(forKey: "offers") as? [AnyObject]
         photos = aDecoder.decodeObject(forKey: "photos") as? [String]
         pricePerDay = aDecoder.decodeObject(forKey: "price_per_day") as? AnyObject
         shortDescription = aDecoder.decodeObject(forKey: "short_description") as? AnyObject
         startDate = aDecoder.decodeObject(forKey: "start_date") as? String
         ticketPrice = aDecoder.decodeObject(forKey: "ticket_price") as? AnyObject
         twitter = aDecoder.decodeObject(forKey: "twitter") as? AnyObject
         views = aDecoder.decodeObject(forKey: "views") as? Int
         website = aDecoder.decodeObject(forKey: "website") as? AnyObject
         wholePrice = aDecoder.decodeObject(forKey: "whole_price") as? AnyObject

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if address != nil{
			aCoder.encode(address, forKey: "address")
		}
		if arabicDescription != nil{
			aCoder.encode(arabicDescription, forKey: "arabic_description")
		}
		if arabicName != nil{
			aCoder.encode(arabicName, forKey: "arabic_name")
		}
		if arabicShortDescription != nil{
			aCoder.encode(arabicShortDescription, forKey: "arabic_short_description")
		}
		if categories != nil{
			aCoder.encode(categories, forKey: "categories")
		}
		if city != nil{
			aCoder.encode(city, forKey: "city")
		}
		if cityId != nil{
			aCoder.encode(cityId, forKey: "city_id")
		}
		if descriptionField != nil{
			aCoder.encode(descriptionField, forKey: "description")
		}
		if endDate != nil{
			aCoder.encode(endDate, forKey: "end_date")
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
		if pricePerDay != nil{
			aCoder.encode(pricePerDay, forKey: "price_per_day")
		}
		if shortDescription != nil{
			aCoder.encode(shortDescription, forKey: "short_description")
		}
		if startDate != nil{
			aCoder.encode(startDate, forKey: "start_date")
		}
		if ticketPrice != nil{
			aCoder.encode(ticketPrice, forKey: "ticket_price")
		}
		if twitter != nil{
			aCoder.encode(twitter, forKey: "twitter")
		}
		if views != nil{
			aCoder.encode(views, forKey: "views")
		}
		if website != nil{
			aCoder.encode(website, forKey: "website")
		}
		if wholePrice != nil{
			aCoder.encode(wholePrice, forKey: "whole_price")
		}

	}

}
