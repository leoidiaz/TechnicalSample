//
//  PlantCollectionViewCell.swift
//  Tierra
//
//  Created by Leonardo Diaz on 6/2/20.
//  Copyright © 2020 Leonardo Diaz. All rights reserved.
//
import UIKit

class PlantCollectionViewCell: UICollectionViewCell {
    //MARK: - Outlets
    @IBOutlet weak var plantImageView: UIImageView!
    //MARK: - Properties
    var plant: Plant? {
        didSet{
            setupCell()
        }
    }
    let uid = NSString(string: UUID().uuidString)
    // Definition code in PlantController: let imageCache = NSCache<NSString, UIImage>()
    let imageCache = PlantController.shared.imageCache
    //MARK: - Helper Methods
    func setupCell(){
        guard let plant = plant else { return }
        guard let plantImageData = plant.profile else { return }
        // Set drop shadow
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2.0)
        layer.shadowRadius = 1.0
        layer.shadowOpacity = 0.35
        layer.masksToBounds = false
        //Corner Radius
        plantImageView.addPlantImageCornerRadius()
        plantImageView.image = nil
        
        if let cachedImage = imageCache.object(forKey: uid){
            plantImageView.image = cachedImage
            return
        }
        guard let plantImage = UIImage(data: plantImageData) else { return }
        imageCache.setObject(plantImage, forKey: uid)
        plantImageView.image = plantImage
    }
}