//
//  TableViewCell.swift
//  TextView in TableView
//
//  Created by Justin Storrer on 4/7/21.
//

import UIKit

protocol TextViewCellDelegate {
    func updateCellHeight()
}

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var textView: UITextView!
    
    var delegate: TextViewCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        textView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}

extension TableViewCell : UITextViewDelegate {
    func textViewDidChange (_ textView: UITextView) {
        delegate?.updateCellHeight()
    }
}
