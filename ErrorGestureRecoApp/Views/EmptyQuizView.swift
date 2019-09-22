//
//  QuizWidgetView.swift
//  AgriQuiz
//
//  Created by Hoang Tuan Anh on 9/10/19.
//  Copyright © 2019 Hoang Tuan Anh. All rights reserved.
//

import UIKit

class EmptyQuizView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var actionLabel: UILabel!
    //    @IBOutlet weak var actionButton: UIButton!
    
    
    public var headerTitleSize: CGFloat = 12
    public var headerTitle: String = "Complete your setup" {
        didSet {
            headerLabel.text = headerTitle
        }
    }
    
    
    public var titleSize: CGFloat = 26
    public var title: String = "Sync this device 's calendar" {
        didSet {
            titleLabel.text = title
        }
    }
    
    
    public var contentTitleSize: CGFloat = 14
    public var contentTitle: String = "Automatically name conversion based on your calendar, and get reminded to record upcoming meetings !" {
        didSet {
            contentLabel.text = contentTitle
        }
    }
    

    
    public var icon: UIImage? {
        didSet {
            self.image.image = icon
        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    private func initialize(){
        Bundle.main.loadNibNamed("EmptyQuizView", owner: self, options: nil)
        
        self.backgroundColor = UIColor.clear
        contentView.backgroundColor = AppColors.AGRIBANK_RED
        self.addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }

    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        
        //=== image/icon
        self.image.image = icon
        self.image.translatesAutoresizingMaskIntoConstraints = false
        
        //=== headerLabel
        self.headerLabel.text = headerTitle.uppercased()
        self.headerLabel.textColor = UIColor.white
        self.headerLabel.font = UIFont(name: AppFonts.AVENIR_NEXT_DEMI_BOLD, size: headerTitleSize)
        self.headerLabel.numberOfLines = 1
        self.headerLabel.sizeToFit()
        self.headerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //=== titleLabel
        self.titleLabel.textColor = UIColor.white
        self.titleLabel.font = UIFont(name: AppFonts.AVENIR_NEXT_DEMI_BOLD, size: titleSize)
        self.titleLabel.numberOfLines = 2
        self.titleLabel.sizeToFit()
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //=== contentLabel
        self.contentLabel.textColor = UIColor.white
        self.contentLabel.font = UIFont(name: AppFonts.AVENIR_NEXT, size: contentTitleSize)
        self.contentLabel.numberOfLines = 5
        self.contentLabel.sizeToFit()
        self.contentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //=== actionLabel
        self.actionLabel.font = UIFont(name: AppFonts.AVENIR_NEXT_DEMI_BOLD, size: 15)
        self.actionLabel.numberOfLines = 1
        self.actionLabel.sizeToFit()
        self.actionLabel.layer.cornerRadius = 5
        self.actionLabel.clipsToBounds = true
        self.actionLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        self.contentView.bringSubview(toFront: actionLabel)
        // update constraints
        self.layoutIfNeeded()
    }

}
