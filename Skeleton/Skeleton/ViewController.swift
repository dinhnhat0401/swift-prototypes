//
//  ViewController.swift
//  Skeleton
//
//  Created by Dinh, Nhat | Nate | MPB on 2019/08/30.
//  Copyright © 2019 Dinh, Nhat | Nate | MPB. All rights reserved.
//

import UIKit
import SkeletonView

class ViewController: UIViewController {
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        avatarImageView.isSkeletonable = true
        tableView.isSkeletonable = true
        label.isSkeletonable = true

        let views = [avatarImageView, tableView, label]
        for view in views {
            view?.showAnimatedGradientSkeleton()
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 50.0) {
            for view in views {
                view?.hideSkeleton()
            }
        }
    }
}
