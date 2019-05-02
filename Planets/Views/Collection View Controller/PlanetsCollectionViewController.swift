//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Michael Flowers on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit


class PlanetsCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return pc.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as! PlanetCollectionViewCell
    
        let planet = pc.planets[indexPath.item]
        cell.label.text = planet.name
        cell.planetImage.image = planet.image
    
        return cell
    }
    
    //MARK: - Properties
    let pc = PlanetController()
    

}
