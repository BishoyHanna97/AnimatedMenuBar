//  RestartTechJobTest
//
//  Created by Bishoy Hanna on 8/1/19.
//  Copyright © 2019 Bishoy Hanna. All rights reserved.


import Foundation 
import ObjectMapper


class HotSpot : NSObject, NSCoding, Mappable{

	var address : AnyObject?
	var arabicDescription : String?
	var arabicName : String?
	var arabicShortDescription : String?
	var categories : [Category]?
	var city : AnyObject?
	var cityId : AnyObject?
	var cuisineTypes : [Feature]?
	var descriptionField : String?
	var externalRating : [AnyObject]?
	var facebook : String?
	var facebookId : AnyObject?
	var facebookImage : AnyObject?
	var features : [Feature]?
	var id : Int?
	var instagram : String?
	var lat : AnyObject?
	var lng : AnyObject?
	var menus : [AnyObject]?
	var name : String?
	var neighborhood : Neighborhood?
	var offers : [AnyObject]?
	var phone : AnyObject?
	var photos : [String]?
	var priceOfTwo : String?
	var shortDescription : String?
	var twitter : String?
	var video : [AnyObject]?
	var views : Int?
	var website : AnyObject?


	class func newInstance(map: Map) -> Mappable?{
		return HotSpot()
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
		cuisineTypes <- map["cuisineTypes"]
		descriptionField <- map["description"]
		externalRating <- map["external_rating"]
		facebook <- map["facebook"]
		facebookId <- map["facebook_id"]
		facebookImage <- map["facebook_image"]
		features <- map["features"]
		id <- map["id"]
		instagram <- map["instagram"]
		lat <- map["lat"]
		lng <- map["lng"]
		menus <- map["menus"]
		name <- map["name"]
		neighborhood <- map["neighborhood"]
		offers <- map["offers"]
		phone <- map["phone"]
		photos <- map["photos"]
		priceOfTwo <- map["price_of_two"]
		shortDescription <- map["short_description"]
		twitter <- map["twitter"]
		video <- map["video"]
		views <- map["views"]
		website <- map["website"]
		
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
         arabicShortDescription = aDecoder.decodeObject(forKey: "arabic_short_description") as? String
         categories = aDecoder.decodeObject(forKey: "categories") as? [Category]
         city = aDecoder.decodeObject(forKey: "city") as? AnyObject
         cityId = aDecoder.decodeObject(forKey: "city_id") as? AnyObject
         cuisineTypes = aDecoder.decodeObject(forKey: "cuisineTypes") as? [Feature]
         descriptionField = aDecoder.decodeObject(forKey: "description") as? String
         externalRating = aDecoder.decodeObject(forKey: "external_rating") as? [AnyObject]
         facebook = aDecoder.decodeObject(forKey: "facebook") as? String
         facebookId = aDecoder.decodeObject(forKey: "facebook_id") as? AnyObject
         facebookImage = aDecoder.decodeObject(forKey: "facebook_image") as? AnyObject
         features = aDecoder.decodeObject(forKey: "features") as? [Feature]
         id = aDecoder.decodeObject(forKey: "id") as? Int
         instagram = aDecoder.decodeObject(forKey: "instagram") as? String
         lat = aDecoder.decodeObject(forKey: "lat") as? AnyObject
         lng = aDecoder.decodeObject(forKey: "lng") as? AnyObject
         menus = aDecoder.decodeObject(forKey: "menus") as? [AnyObject]
         name = aDecoder.decodeObject(forKey: "name") as? String
         neighborhood = aDecoder.decodeObject(forKey: "neighborhood") as? Neighborhood
         offers = aDecoder.decodeObject(forKey: "offers") as? [AnyObject]
         phone = aDecoder.decodeObject(forKey: "phone") as? AnyObject
         photos = aDecoder.decodeObject(forKey: "photos") as? [String]
         priceOfTwo = aDecoder.decodeObject(forKey: "price_of_two") as? String
         shortDescription = aDecoder.decodeObject(forKey: "short_description") as? String
         twitter = aDecoder.decodeObject(forKey: "twitter") as? String
         video = aDecoder.decodeObject(forKey: "video") as? [AnyObject]
         views = aDecoder.decodeObject(forKey: "views") as? Int
         website = aDecoder.decodeObject(forKey: "website") as? AnyObject

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
		if cuisineTypes != nil{
			aCoder.encode(cuisineTypes, forKey: "cuisineTypes")
		}
		if descriptionField != nil{
			aCoder.encode(descriptionField, forKey: "description")
		}
		if externalRating != nil{
			aCoder.encode(externalRating, forKey: "external_rating")
		}
		if facebook != nil{
			aCoder.encode(facebook, forKey: "facebook")
		}
		if facebookId != nil{
			aCoder.encode(facebookId, forKey: "facebook_id")
		}
		if facebookImage != nil{
			aCoder.encode(facebookImage, forKey: "facebook_image")
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
		if menus != nil{
			aCoder.encode(menus, forKey: "menus")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if neighborhood != nil{
			aCoder.encode(neighborhood, forKey: "neighborhood")
		}
		if offers != nil{
			aCoder.encode(offers, forKey: "offers")
		}
		if phone != nil{
			aCoder.encode(phone, forKey: "phone")
		}
		if photos != nil{
			aCoder.encode(photos, forKey: "photos")
		}
		if priceOfTwo != nil{
			aCoder.encode(priceOfTwo, forKey: "price_of_two")
		}
		if shortDescription != nil{
			aCoder.encode(shortDescription, forKey: "short_description")
		}
		if twitter != nil{
			aCoder.encode(twitter, forKey: "twitter")
		}
		if video != nil{
			aCoder.encode(video, forKey: "video")
		}
		if views != nil{
			aCoder.encode(views, forKey: "views")
		}
		if website != nil{
			aCoder.encode(website, forKey: "website")
		}

	}

}
