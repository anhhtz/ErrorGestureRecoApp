//
//  GettingStartedViewController.swift
//  AgriQuiz
//
//  Created by Hoang Tuan Anh on 9/4/19.
//  Copyright © 2019 Hoang Tuan Anh. All rights reserved.
//

import UIKit
import SnapKit

class GettingStartedViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    override func loadView() {
        super.loadView()
        
        self.initMainLayout()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "QUIZ"
    }
    func initMainLayout() {
        
        // if no history question exsist => user is not finish any question; now show EmptyQuizView
        let emptyQuizView = EmptyQuizView(frame: .zero)
        emptyQuizView.icon = UIImage(named: "rank")
        emptyQuizView.headerTitle = "Kết quả trắc nghiệm của bạn"
        emptyQuizView.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(emptyQuizView)
        
        emptyQuizView.snp.makeConstraints { (m) in
            m.top.equalTo(contentView.snp.top).offset(10)
            m.leading.equalTo(contentView.snp.leading).offset(10)
            m.trailing.equalTo(contentView.snp.trailing).offset(-10)
//            m.bottom.equalTo(contentView.snp.bottom)
        }
        
        emptyQuizView.actionButton.addTapGestureRecognizer {
            let vc = MainViewController()
            self.navigationController?.pushViewController(vc, animated: true)
//            print("tapped !")
//            print(emptyQuizView.contentView.frame.size.height)
        }
        
        let emptyQuizView1 = EmptyQuizView(frame: .zero)
        emptyQuizView1.icon = UIImage(named: "rank")
        emptyQuizView1.headerTitle = "Kết quả trắc nghiệm của bạn"
        emptyQuizView1.translatesAutoresizingMaskIntoConstraints = false

        self.contentView.addSubview(emptyQuizView1)

        emptyQuizView1.snp.makeConstraints { (m) in
            m.top.equalTo(emptyQuizView.snp.bottom).offset(10)
            m.leading.equalTo(contentView.snp.leading).offset(10)
            m.trailing.equalTo(contentView.snp.trailing).offset(-10)
            m.bottom.equalTo(contentView.snp.bottom)
        }

        emptyQuizView1.contentLabel.addTapGestureRecognizer {
            print("tapped !")
            print(emptyQuizView1.contentView.frame.size.height)
        }
        
//        contentView.snp.makeConstraints { (m) in
//            m.bottom.equalTo(emptyQuizView1.snp.bottom).offset(-20)
//        }
        
//        emptyQuizView.buttonAction = { [weak self] in
//            let mainViewController = MainViewController()
//            self?.navigationController?.pushViewController(mainViewController, animated: true)
//        }
        
    }
    
}

// MARK: Layout and Contraints for 'Avatar Card'
extension GettingStartedViewController {
    
//    func initAvatarCardView() {
//        let box = UIView(frame: .zero)
//        box.backgroundColor = UIColor.green
//        box.layer.cornerRadius = 8.0
//        box.layer.shadowColor = UIColor.gray.cgColor
//        box.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
//        box.layer.shadowRadius = 8.0
//        box.layer.shadowOpacity = 0.7
//
//        self.contentView.addSubview(box)
//
//        //-- avatarImageView
//        let avatarImageView = UIImageView()
//        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
//
//        box.addSubview(avatarImageView)
//
//        // Constraints
//        //--- avatarImageView
//        //--- Height
//        NSLayoutConstraint.init(item: avatarImageView, attribute: .height, relatedBy: .equal, toItem: box, attribute: .height, multiplier: 3/5, constant: 0.0).isActive = true
//
//        //--- Width
//        NSLayoutConstraint.init(item: avatarImageView, attribute: .width, relatedBy: .equal, toItem: avatarImageView, attribute: .height, multiplier: 1.0, constant: 0.0).isActive = true
//
//        //--- CenterY
//        NSLayoutConstraint.init(item: avatarImageView, attribute: .centerY, relatedBy: .equal, toItem: box, attribute: .centerY, multiplier: 1.0, constant: 0.0).isActive = true
//
//        //--- Leading
//        NSLayoutConstraint.init(item: avatarImageView, attribute: .leading, relatedBy: .equal, toItem: box, attribute: .leading, multiplier: 1.0, constant: 16.0).isActive = true
//
//        avatarImageView.layoutIfNeeded()
//
//        // userTitleLabel
//        let userTitleLabel = UILabel()
//        userTitleLabel.numberOfLines = 0
//        userTitleLabel.sizeToFit()
//
//        userTitleLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        box.addSubview(userTitleLabel)
//
//        // Constraints
//        //--- Leading
//        NSLayoutConstraint.init(item: userTitleLabel, attribute: .leading, relatedBy: .equal, toItem: avatarImageView, attribute: .trailing, multiplier: 1.0, constant: 16.0).isActive = true
//
//        //--- Trailing
//        NSLayoutConstraint.init(item: userTitleLabel, attribute: .trailing, relatedBy: .equal, toItem: box, attribute: .trailing, multiplier: 1.0, constant: -5.0).isActive = true
//
//        //--- CenterY
//        NSLayoutConstraint.init(item: userTitleLabel, attribute: .centerY, relatedBy: .equal, toItem: avatarImageView, attribute: .centerY, multiplier: 1.0, constant: -8.0).isActive = true
//
//        userTitleLabel.layoutIfNeeded()
//
//        let userSubTitleLabel = UILabel()
//        userSubTitleLabel.numberOfLines = 1
//        userSubTitleLabel.textColor = UIColor.gray
//
//        userSubTitleLabel.translatesAutoresizingMaskIntoConstraints = false
//        box.addSubview(userSubTitleLabel)
//
//        // Constraints
//        //--- Leading
//        NSLayoutConstraint.init(item: userSubTitleLabel, attribute: .leading, relatedBy: .equal, toItem: avatarImageView, attribute: .trailing, multiplier: 1.0, constant: 16.0).isActive = true
//
//        //--- Trailing
//        NSLayoutConstraint.init(item: userSubTitleLabel, attribute: .trailing, relatedBy: .equal, toItem: box, attribute: .trailing, multiplier: 1.0, constant: -5.0).isActive = true
//
//        //--- CenterY
//        NSLayoutConstraint.init(item: userSubTitleLabel, attribute: .centerY, relatedBy: .equal, toItem: box, attribute: .centerY, multiplier: 1.0, constant: 17.0).isActive = true
//
//        userSubTitleLabel.layoutIfNeeded()
//        //--- Layout
//        // AvatarCardView
//        box.snp.makeConstraints { (m) -> Void in
//            m.height.equalTo(80)
//            m.top.equalTo(self.view).offset(10)
//            m.left.equalTo(self.view).offset(10)
//            m.right.equalTo(self.view).offset(-10)
//            //            m.edges.equalTo(self.view).inset(UIEdgeInsetsMake(20, 20, 20, 20))
//        }
//        box.layoutIfNeeded()
//
//        avatarImageView.image = UIImage(named: "ninja")
//        avatarImageView.layer.shadowColor = UIColor.gray.cgColor
//        avatarImageView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
//        avatarImageView.layer.shadowRadius = 12
//        avatarImageView.layer.shadowOpacity = 0.7
//
//
//        userTitleLabel.textColor = UIColor.white
//        userTitleLabel.text = "HOÀNG TUẤN ANH"
//
//        userSubTitleLabel.textColor = UIColor.white
//        userSubTitleLabel.text = "CẤP ĐỘ 1"
//    }
}
