//
//  ViewController.swift
//  MVCPattern
//
//  Created by Kumari Mansi on 05/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var collectionViewCell: UICollectionView!
    
    //TO DISPLAY VERTICALLY
    
  /*  var arrData = [AmazonModel] ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewCell.collectionViewLayout = UICollectionViewFlowLayout()
      //  collectionView.dataSource = self
        arrData = AmazonData.getAllAmazonData()
        //collectionView.reloadData()
        
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AmazonCell", for: indexPath) as! AmazonCell
        let model = arrData[indexPath.row]
        cell.img.image = model.img
        cell.lbl.text = model.titleStr
        return cell
    }
}

 extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width
      //  let collectionHeight = collectionView.bounds.height
        return CGSize(width: collectionWidth/2, height: collectionWidth/2)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
} */
 
    //TO DISPLAY HORIZONTALLY
 
var arrData = [AmazonModel]()

    override func viewDidLoad() {
        super.viewDidLoad()

       
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 0
       layout.minimumLineSpacing = 10
        
        collectionViewCell.collectionViewLayout = layout
        collectionViewCell.dataSource = self
        collectionViewCell.delegate = self

        
        arrData = AmazonData.getAllAmazonData()
        collectionViewCell.reloadData()
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AmazonCell", for: indexPath) as! AmazonCell
        let model = arrData[indexPath.row]
        cell.img.image = model.img
        cell.lbl.text = model.titleStr
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width
        let collectionHeight = collectionView.bounds.height
        return CGSize(width: collectionWidth / 2, height: collectionHeight) 
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
