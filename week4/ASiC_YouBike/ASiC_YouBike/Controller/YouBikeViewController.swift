//
//  YouBikeViewController.swift
//  ASiC_YouBike
//
//  Created by WU CHIH WEI on 2018/2/25.
//  Copyright © 2018年 WU CHIH WEI. All rights reserved.
//

import UIKit
import MapKit

protocol StationInfo {
    
    var name: String { get }
    
    var position: String { get }
    
    var remainBikes: String { get }
}

class YouBikeViewController: UIViewController, DelegateClientProtocol {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var mapTitle: UILabel!
    @IBOutlet weak var mapSubtitle: UILabel!
    @IBOutlet weak var mapRemain: UILabel!
    
    let closureClient = ClosureClient()
    var delegateClient = DelegateClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegateClient.delegate = self
        delegateClient.loadData()
        
        closureClient.getDataFromFile(completion: {(annotation) -> Void in
            let span: MKCoordinateSpan = MKCoordinateSpanMake(0.003, 0.003)
            let location: CLLocationCoordinate2D = annotation.coordinate
            let region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
            mapView.setRegion(region, animated: true)
            
            mapView.addAnnotation(annotation)
            mapTitle.text = annotation.title!
            mapSubtitle.text = annotation.subtitle!
        })
        
    }
    func didGetDataFromFile(stationInfo: StationInfo) {
        mapRemain.text = "剩 \(stationInfo.remainBikes) 台"
    }
    
}

