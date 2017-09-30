//
//  File.swift
//  ExchangeRates
//
//  Created by Ерден on 30.09.17.
//  Copyright © 2017 Ерден. All rights reserved.
//

import UIKit
import SnapKit

class MainCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(currenciesTextField)
        addSubview(ratioTextField)
        
        currenciesTextField.snp.makeConstraints { (make) in
            make.left.equalTo(8)
            make.top.equalTo(4)
            make.bottom.equalTo(-4)
            make.width.equalTo(self).multipliedBy(0.4)
        }
        
        ratioTextField.snp.makeConstraints { (make) in
            make.right.equalTo(-8)
            make.centerY.equalTo(currenciesTextField.snp.centerY)
            make.left.equalTo(currenciesTextField.snp.right)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let currenciesTextField = MainCell.addTextField(withTextAlignement: .left)
    let ratioTextField = MainCell.addTextField(withTextAlignement: .right)
    
    static func addTextField(withTextAlignement alignment: NSTextAlignment) -> UITextField {
        let tf = UITextField()
        tf.textAlignment = alignment
        return tf
    }
    
    
}
