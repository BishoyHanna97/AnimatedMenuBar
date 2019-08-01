//
//  apiCall.swift
//  RestartTechJobTest
//
//  Created by Bishoy Hanna on 8/1/19.
//  Copyright © 2019 Bishoy Hanna. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import Alamofire
import ObjectMapper

class apiCall: NSObject {
    
    class func requestCall(completion:@escaping(_ _error:Error?, _ content:RootClass?)->Void)  {
        let urll = "http://tourista.167.99.5.134.xip.io/api/home"
        Alamofire.request(urll, method: .get , parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode:200..<300).responseObject(completionHandler: { (response: DataResponse<RootClass>) in
                //print(response.result.value?.data?.countries?.toJSONString())
                switch response.result
                {
                case.failure(let error):
                    completion(error, nil)
                    print(error)
                case.success(let value):
                    print(value.data?.events)
                    completion(nil, response.result.value)
                }
            })

                }
    
        
    }


