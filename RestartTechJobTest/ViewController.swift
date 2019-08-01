//
//  ViewController.swift
//  RestartTechJobTest
//
//  Created by Bishoy Hanna on 8/1/19.
//  Copyright © 2019 Bishoy Hanna. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController,UITabBarDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var tableV: UITableView!
    @IBOutlet weak var hotSpotButton: UIButton!
    @IBOutlet weak var billmanIcon: UIButton!
    @IBOutlet weak var mapIcon: UIButton!
    @IBOutlet weak var attractionIcon: UIButton!
    @IBOutlet weak var eventIcon: UIButton!
    var hotSpotPoint : CGPoint!
    var mapPoint : CGPoint!
    var attractionPoint : CGPoint!
    var eventPoint : CGPoint!
    var isOpened : Bool!
    var rootClass : RootClass!
    var index : Int!
    
    override func viewDidLoad() {
        isOpened = true
        super.viewDidLoad()
        handleRefresh()
        hotSpotPoint = hotSpotButton.center
        attractionPoint = attractionIcon.center
        mapPoint = mapIcon.center
        eventPoint = eventIcon.center
        
        mapIcon.center = billmanIcon.center
        hotSpotButton.center = billmanIcon.center
        attractionIcon.center = billmanIcon.center
        eventIcon.center = billmanIcon.center
        print(mapIcon.center)
        print(hotSpotButton.center)
        print(billmanIcon.center)
       tableV.reloadData()
    }
   
    func handleRefresh(){
        apiCall.requestCall { (error: Error?, rootClass: RootClass?) in
            if let rootClass = rootClass {
                self.rootClass = rootClass
                self.tableV.reloadData()
            
            }
        }
        
    }
    



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        cell?.collectionview.reloadData()
    
        if indexPath.row == 0 {
            cell?.cellTitle.text = "Hotspots"
            cell?.cellIcon.image = #imageLiteral(resourceName: "hotspot_icon")
            self.index = 0
            
            
        }
        else if indexPath.row == 1 {
            cell?.cellTitle.text = "Events"
            cell?.cellIcon.image = #imageLiteral(resourceName: "events_icon")
         self.index = 1
        } else if indexPath.row == 2 {
            
            cell?.cellTitle.text = "Attractions"
            cell?.cellIcon.image = #imageLiteral(resourceName: "attarctions_icon")
             self.index = 2
        }
        
        
        return cell!
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
        if self.index == 0 {
            cell?.Title.text = rootClass?.data?.hotSpots?[indexPath.row].name
            cell?.Description.text = rootClass?.data?.hotSpots?[indexPath.row].categories?[0].name
            
            let imageString = rootClass?.data?.hotSpots?[indexPath.row].photos?[0]
            let imageURl = URL(string: imageString ?? "bellman_bottom-icon")
            cell?.image.kf.setImage(with: imageURl)
            
        } else if self.index == 1{
            
            cell?.Title.text = rootClass?.data?.events?[indexPath.row].name
            cell?.Description.text = rootClass?.data?.events?[indexPath.row].categories?[0].name
            
            let imageString = rootClass?.data?.events?[indexPath.row].photos?[0]
            let imageURl = URL(string: imageString ?? "bellman_bottom-icon")
            cell?.image.kf.setImage(with: imageURl)
            
            
        }
        else if self.index == 2{
            
            cell?.Title.text = rootClass?.data?.attractions?[indexPath.row].name
            cell?.Description.text = rootClass?.data?.attractions?[indexPath.row].categories?[0].name
            
            let imageString = rootClass?.data?.attractions?[indexPath.row].photos?[0]
            let imageURl = URL(string: imageString ?? "bellman_bottom-icon")
            cell?.image.kf.setImage(with: imageURl)
            
            
        }
        
        
        return cell!
    }
    

    
    @IBAction func billmanPressed(_ sender: Any) {
        if isOpened == true {
            UIView.animate(withDuration: 0.3, animations: {
                self.mapIcon.alpha = 1
                self.attractionIcon.alpha = 1
                self.eventIcon.alpha = 1
                self.hotSpotButton.alpha = 1
                
                self.mapIcon.center = self.mapPoint
                self.attractionIcon.center = self.attractionPoint
                self.eventIcon.center = self.eventPoint
                self.hotSpotButton.center = self.hotSpotPoint
                self.isOpened = false
                
            })
            
            
        }
        else{
            UIView.animate(withDuration: 0.3, animations: {
                self.mapIcon.alpha = 0
                self.attractionIcon.alpha = 0
                self.eventIcon.alpha = 0
                self.hotSpotButton.alpha = 0
                
                self.mapIcon.center = self.billmanIcon.center
                self.hotSpotButton.center = self.billmanIcon.center
                self.attractionIcon.center = self.billmanIcon.center
                self.eventIcon.center = self.billmanIcon.center
                self.isOpened = true
               
            })
            
            
        }
        
        
       
    }
    

}

