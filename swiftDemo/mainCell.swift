//
//  mainCell.swift
//  swiftDemo
//
//  Created by 叶永长 on 12/10/15.
//  Copyright © 2015 YYC. All rights reserved.
//

import UIKit

class mainCell: UITableViewCell {
    
    
    var nameLabel:UILabel = UILabel()
    var desLabel:UILabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let rect = CGRect(x: 10, y: 10, width: 100, height: 15)
        nameLabel = UILabel(frame: rect)
        nameLabel.text = "name"
        nameLabel.textAlignment = NSTextAlignment.Left
        nameLabel.font = UIFont(name: "Heiti SC", size: 13)
        self.addSubview(nameLabel)
        
        let desRect = CGRect(x: 10, y: 35, width: 100, height: 15)
        desLabel = UILabel(frame: desRect)
        desLabel.text = "详情描述"
        desLabel.textAlignment = NSTextAlignment.Left
        desLabel.font = UIFont(name: "Heiti SC", size: 13)
        self.addSubview(desLabel)
        
        
    }

    func showData(name:NSString){
        nameLabel.text = name as String
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
