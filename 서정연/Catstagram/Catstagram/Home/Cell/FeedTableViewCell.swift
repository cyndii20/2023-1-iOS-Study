//
//  FeedTableViewCell.swift
//  Catstagram
//
//  Created by Seo Cindy on 2023/05/01.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewUserProfile: UIImageView!
    @IBOutlet weak var imageViewFeed: UIImageView!
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var imageViewMyProfile: UIImageView!
    @IBOutlet weak var labelFeed: UILabel!
    @IBOutlet weak var labelHowManyComment: UILabel!
    @IBOutlet weak var labelHowManyLike: UILabel!
    @IBOutlet weak var buttonIsBookMark: UIButton!
    @IBOutlet weak var buttonIsHeart: UIButton!
    
    
    @IBAction func actionIsHeart(_ sender: Any) {
        if buttonIsHeart.isSelected{
            buttonIsHeart.isSelected = false
        }else{
            buttonIsHeart.isSelected = true
        }
    }
    
    
    @IBAction func actionIsBookMark(_ sender: Any) {
        if buttonIsBookMark.isSelected{
            buttonIsBookMark.isSelected = false
        }else{
            buttonIsBookMark.isSelected = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageViewUserProfile.layer.cornerRadius = 12.5
        imageViewUserProfile.clipsToBounds = true
        
        imageViewMyProfile.layer.cornerRadius = 10
        imageViewMyProfile.clipsToBounds = true
        
        let fontSize = UIFont.boldSystemFont(ofSize: 9)
        let attributedStr = NSMutableAttributedString(string: labelFeed.text ?? "")
        attributedStr.addAttribute(.font, value: fontSize, range: NSRange.init(location: 0, length: 3))
        labelFeed.attributedText = attributedStr


    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
