//
//  MapView.swift
//  MyMap
//
//  Created by 安原知廣 on 2023/07/17.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let searchkey: String
    
    func makeUIView(context: Context) -> MKMapView {
        
        //MKMapViewのインスタンス作成
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        print("検索ワード:\(searchkey)")
        
        
        let geocoder = CLGeocoder()
        
        geocoder.geocodeAddressString(
            searchkey,
            completionHandler: { (placemarks, error) in
                if let placemarks,
                   let firstPlacemark = placemarks.first,
                   let location = firstPlacemark.location {
                    let targetCoordinate = location.coordinate
                    print("緯度軽度:\(targetCoordinate)")
                    let pin = MKPointAnnotation()
                    pin.coordinate = targetCoordinate
                    pin.title = searchkey
                    uiView.addAnnotation(pin)
                    uiView.region = MKCoordinateRegion(
                        center: targetCoordinate,
                        latitudinalMeters: 500.0,
                        longitudinalMeters: 500.0)
                    
                }
                
            })
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchkey: "Tachikawa")
    }
}
