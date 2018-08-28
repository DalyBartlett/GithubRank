//  UserCell.swift
//  OctoPodium
//
//  Created by Nuno Gonçalves on 22/11/15.
//  Copyright © 2015 Nuno Gonçalves. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell, CellWithAvatar, NibReusable {

    @IBOutlet weak var login: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var starsLabel: UILabel!
    
    @IBOutlet weak var background: UIView!
    
    @IBOutlet weak var positionLabel: UILabel!

    var position: Int? {
        didSet {
            positionLabel.text = "\(position!)"
        }
    }
    
    var bgColor: UIColor? {
        didSet {
            background.backgroundColor = bgColor!
        }
    }
    
    var user: User! {
        didSet {
            avatar.fetchAndLoad(user.avatarUrl)
            login.text = user.login
            starsLabel.text = "\(user.starsCount ?? 0)"
        }
    }
}
