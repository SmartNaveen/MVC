//
//  UserCollectionViewCell.swift
//  MVC
//
//  Created by Mr. Naveen Kumar on 28/03/21.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    static let share = UserCollectionViewCell()
    
    var arrData: AmazonModel? {
        didSet {
            userImageView.image = arrData?.userImage
            userNameLabel.text = arrData?.userName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func configureCell(arrData: AmazonModel) {
        userImageView.image = arrData.userImage
        userNameLabel.text = arrData.userName
    }
    
    func loadNib() -> UINib {
        return UINib(nibName: userCollectionNibName, bundle: nil)
    }
    
}
