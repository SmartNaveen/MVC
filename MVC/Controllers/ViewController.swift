//
//  ViewController.swift
//  MVC
//
//  Created by Mr. Naveen Kumar on 28/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrData = [AmazonModel]()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        arrData = AmazonData.share.getUserData()
        collectionView.register(UserCollectionViewCell.share.loadNib(), forCellWithReuseIdentifier: userCellIdentifier)
        

        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy HH:mm"
        let date = Date(timeIntervalSinceReferenceDate: -1234567898.0)
        let dateString = formatter.string(from: date)
        print(dateString)

    }
}

 // MARK:- CollectionView Delegate
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: userCellIdentifier, for: indexPath) as! UserCollectionViewCell
//        cell.userImageView.image = arrData[indexPath.item].userImage
//        cell.userNameLabel.text = arrData[indexPath.item].userName
//        cell.arrData = arrData[indexPath.item]
        cell.configureCell(arrData: arrData[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let userCellWidth = (self.collectionView.frame.size.width - 10)/2
        return CGSize(width: userCellWidth, height: 300)
    }
}
